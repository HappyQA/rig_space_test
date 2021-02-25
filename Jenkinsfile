/* Job url - http://jenkins/job/Rigspace-Autotest/ */

properties([[$class: 'RebuildSettings', autoRebuild: false, rebuildDisabled: false],
    parameters([
        booleanParam(defaultValue: true, description: 'Stop stage', name: 'STOP'),
        booleanParam(defaultValue: true, description: 'Run stage', name: 'RUN')
    ])
])

pipeline {

    agent any
    
    tools {
        jdk 'java8'
        maven 'Maven3.6.0'
    }

    stages {
        stage ('Stop docker container + shut down test instance') {
            when {expression {params.STOP}}
            steps {
                script {
                    echo "Останалииваем контейнер с БД + стоп прииложения"
                    sh "/home/ts/rig_space_qaa/stop.sh"
                    sh "./drop_db_container.sh"
                }
            }
        }
        stage ('Maven clean') {
            when {expression {params.RUN}}
            steps {
                script {
                    sh "mvn clean"
                }
            }
        }
        stage ('Create docker container with database + import dump') {
            when {expression {params.RUN}}
            steps {
                script {
                    echo "Запускаем скрипт по созданию контейнера + накатываем рабочий дамп БД"
                    sh "./create_db_container.sh"
                }
            }
        }
        stage ('Running Rigspace modules') {
            when {expression {params.RUN}}
            steps {
                script {
                    echo "Запускаем инстанс Rigspace"
                    sh "/home/ts/rig_space_qaa/start.sh"
                    sleep(time:100,unit:"SECONDS")
                }
            }
        }
        stage ('Running Tests on Google Chrome') {
            when {expression {params.RUN}}
            steps {
                script {
                    echo "Запускаем тесты внутри Селеноида на баурезере Google Chrome"
                    sh "mvn test -Dfailsafe.rerunFailingTestsCount=2 -Dgroups=\"create\" -Dbrowser=CHROME"
                    sh "mvn test -Dfailsafe.rerunFailingTestsCount=2 -Dgroups=\"update\" -Dbrowser=CHROME"
                    sh "mvn test -Dfailsafe.rerunFailingTestsCount=2 -Dgroups=\"delete\" -Dbrowser=CHROME"
                    sh "mvn test -Dfailsafe.rerunFailingTestsCount=2 -Dgroups=\"other\" -Dbrowser=CHROME"
                }
            }
            post {
                always {
                    allure([
                        includeProperties: false,
                        jdk: '',
                        reportBuildPolicy: 'ALWAYS',
                        results: [[path: 'target/allure-results']]
                    ])
                }
            }
        }
        stage ('Prepare instance for new browser') {
        when {expression {params.RUN}}
            steps {
                script {
                    echo "Остановка инстанса, drop database, stop контейнер - повторный запуск"
                    sh "/home/ts/rig_space_qaa/stop.sh"
                    sh "./drop_db_container.sh"
                    sh "mvn clean"
                    sh "./create_db_container.sh"
                    sh "/home/ts/rig_space_qaa/start.sh"
                    sleep(time:100,unit:"SECONDS")
                }
            }
        }
        stage ('Running Tests on Mozzila FireFox') {
            when {expression {params.RUN}}
            steps {
                script {
                    echo "Запускаем тесты внутри Селеноида на браузере Mozzila FireFox"
                    sh "mvn test -Dfailsafe.rerunFailingTestsCount=2 -Dgroups=\"create\" -Dbrowser=FIREFOX"
                    sh "mvn test -Dfailsafe.rerunFailingTestsCount=2 -Dgroups=\"update\" -Dbrowser=FIREFOX"
                    sh "mvn test -Dfailsafe.rerunFailingTestsCount=2 -Dgroups=\"delete\" -Dbrowser=FIREFOX"
                    sh "mvn test -Dfailsafe.rerunFailingTestsCount=2 -Dgroups=\"other\" -Dbrowser=FIREFOX"
                }
            }
            post {
                always {
                    allure([
                        includeProperties: false,
                        jdk: '',
                        reportBuildPolicy: 'ALWAYS',
                        results: [[path: 'target/allure-results']]
                    ])
                }
            }
        }
        stage ('Stopping Rigspace modules') {
            when {expression {params.RUN}}
            steps {
                script {
                    echo "Остановка инстанса Rigspace"
                    sh "/home/ts/rig_space_qaa/stop.sh"
                }
            }
        }
        stage ('Stopping docker container with database + drop DB') {
            when {expression {params.RUN}}
            steps {
                script {
                    echo "Схлопываем контейнер в БД + удаляем схему БД Rigspace"
                    sh "./drop_db_container.sh"
                }
            }
        }
    }

    post {
        failure {
            script {
                echo "Отправка статуса на Почту dev"
                emailext to: 'a.stupin@tetra-soft.ru',
                subject: "[QAA/Tests] Результаты ${BUILD_NUMBER} сборки",
                body: """
                    <img src=\"https://github.com/HappyQA/happyqa.github.io/blob/master/rigspace_logo.jpg?raw=true\"><br><br>
                    <br><b>Результаты тестов:</b><br>
                    <br>Номер сборки: <b>${BUILD_NUMBER}</b>
                    <br>Статус сборки: <b>${currentBuild.result}</b>
                    <br><b><a href=\"http://jenkins/job/Rigspace-Autotest/${BUILD_NUMBER}/allure/\">Просмотреть отчет по тестам</a></b>
                    """,
                mimeType: 'text/html'
                echo "Отправка статуса в Slack - qa-automation-ci"
                sendRC(currentBuild.currentResult, "Rigspace", "qa")
            }
        }
    }
}

def sendRC(String buildResult, String projectName, String channel) {
    def tokensByChannel = [
            qa: 'CLXFS4RRR'
    ]
    if  ( buildResult == "SUCCESS" ) {
        slackSend color: "good", channel: tokensByChannel.get(channel), message: "Все тесты пройдены"
    }
    else if ( buildResult == "FAILURE" ) {
        slackSend color: "danger", channel: tokensByChannel.get(channel), message: "Есть провалившиеся тесты - http://jenkins/job/Rigspace-Autotest/${BUILD_NUMBER}/allure/"
    }
    else if ( buildResult == "UNSTABLE" ) {
        slackSend color: "warning", channel: tokensByChannel.get(channel), message: "Есть нестабильные тесты - http://jenkins/job/Rigspace-Autotest/${BUILD_NUMBER}/allure/"
    }
}