Здесь немного распишу по актуальной информации по внедрению, сопровождению и будущему пополнению кодовой базы нашего процесса по автоматизированному тестированию проекта Rigspace.

* Стек технологий:

Java (8), Maven, Selenium (Selenide), JUnit5, Docker, Selenoid, Allure, Jenkins CI, Bitbucket.

* Рабочий репозитарий:

http://bitbucket/projects/RS/repos/rig_space_qaa/browse

* Jenkins Pipeline's: 

http://jenkins/job/Rigspace-Autotest/ - основная Джоба для запуска тестов;

http://jenkins/job/Rigspace-Build-For-Test/ - Джоба для обновления площадки по автотестированию.

* Расположение площадки:

test.rig.space/$module_name

ssh ts@192.168.0.13 / figase9 - rig_space_qaa/

БД: 192.168.0.13:33069 (docker container)

root / tetraroot

Selenoid-UI - http://192.168.0.13:8090/

Selenoid - http://192.168.0.13:4444/wd/hub/

* Иерархия проекта:

Сопутствующие необходимые данные в проекте / db_QAA - содержит в себе docker-compose файл для разворачивания БД в контейнере, на которую накатываются скрипты для работы с БД:

create_db_container.sh - создание БД + накатывание дампа БД для последующей работы с продуктом;

drop_db_container - удаление схемы БД + сворачивание контейнера с ранее созданной репликой БД;

pom.xml - Maven конфигуратор проекта, содержит в себе все зависимости проекта;

Jenkinsfile - Скрипт конфигурации CI по проекту запуска автотестов, подробнее: http://bitbucket/projects/RS/repos/rig_space_qaa/browse/Jenkinsfile

* Code Style:

Работаем по кастомному фреймворку на Page Object Base - где класс - Page является классом где находятся статичные локаторы веб элементов на странице проекта, и методы взаимодействия с ними:

Классы Test - классы которые содержат в себе группу тестов над объектами.

Пример правильного оформления по work flow:

ru.tetrasoft.rig.space.admin.pages - пакет который содержит в себе классы веб элементов и методы взаимодействия с ними;

ru.tetrasoft.rig.space.admin.tests - пакет который содержит в себе тесты, для взаимодействия с объектами для получения требуемого результата;

ru.tetrasoft.rig.space.common - общая компонентная база веб элементов которые повторяются на всех страницах, прим. кнопки Создания, Удаления, Popup'ы ответа системы, необходимо использовать один класс для повторяющихся элементов по каждому модулю, называя соответственно модулю в котором пишем код;

ru.tetrasoft.rig.space.utilites - содержит в себе класс BrowserFactory / Enum для конфигурации вызываемых браузеров, в текущем состоянии мы поддерживаем только актуальные (-2 stable версии) браузеры (Chrome, Firefox), содержит в себе инициализацию конфигурации тестов (@SetUp, @TearsFown, прочая конфигурация);

Folder main - конфигурация глобальных настроек, пример настройки конфигураций Allure, или хранения URL по проектам;

Folder test - основное хранилище Package / Test's / Page's проекта.

* Примеры кода:

Пример Page Object патерна по созданию объекта Группы Безопасности - http://bitbucket/projects/RS/repos/rig_space_qaa/browse/src/test/java/AdminPages/NewSecurityGroupPage.java

Декларация веб элементов оборачиваем в Selenide Element's как указано выше в классе, далее описываем методы взаимодействия с ними.
```
package ru.tetrasoft.rig.space.admin.pages;
 
import com.codeborne.selenide.Condition;
import com.codeborne.selenide.SelenideElement;
import io.qameta.allure.Step;
 
import static com.codeborne.selenide.Selenide.*;
 
/**
 *   autor a.stupin
 */
 
public class NewSecurityGroupPage {
 
    private static SelenideElement fieldName = $x("//input[@data-placeholder='Название']");
    private static SelenideElement fieldDescription = $x("//textarea[@data-placeholder='Описание']");
    private static SelenideElement matCellSecurityGroupsPage = $x("//mat-row[2]//mat-cell//div[contains(text(), 'группа')]");
 
    @Step("Ввод наименования Группы безопасности")
    public static void sendDataNameSecurityGroup (String groupName) {
        $(fieldName).sendKeys(groupName);
    }
 
    @Step("Ввод описания Группы безопасности")
    public static void sendDataDescriptionSecurityGroup (String groupDescription) {
        $(fieldDescription).sendKeys(groupDescription);
    }
 
    @Step("Проверка сохранения группы безопасности")
    public static void matCellCheckSaveResultSecurityGroupsPage (String value) {
        $(matCellSecurityGroupsPage).shouldHave(Condition.text(value));
    }
 
    @Step("Нажатие на раннее созданную группу безопасности в таблице")
    public static void matCellClickSecurityGroupsPage () {
        $(matCellSecurityGroupsPage).click();
    }
}
```
Пример теста на CRUD объекта Группы безопасности - http://bitbucket/projects/RS/repos/rig_space_qaa/browse/src/test/java/AdminTests/CRUDSecurityGroupTest.java
```
package ru.tetrasoft.rig.space.admin.tests;
 
import ru.tetrasoft.rig.space.utilities.BaseTest;
import io.qameta.allure.Description;
import io.qameta.allure.Epic;
import io.qameta.allure.Feature;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
 
import static ru.tetrasoft.rig.space.common.CommonComponentsAdminPage.*;
import static ru.tetrasoft.rig.space.common.LoginModulePage.*;
import static ru.tetrasoft.rig.space.common.UrlPage.openAdminModule;
import static ru.tetrasoft.rig.space.admin.pages.NewSecurityGroupPage.*;
 
/**
 *   autor a.stupin
 */
 
@Epic("Модуль Admin")
public class CRUDSecurityGroupTest extends BaseTest {
 
    @Feature("Тестирование функции создания пользователя")
    @Tag("create")
    @Test
    @Description("Создание группы безопасности")
    public void createSecurityGroup () {
        openAdminModule();
        loginIntoModule("admin","1");
        clickTabSecurityGroups();
        clickOnButtonPlusSecurityGroups();
        sendDataNameSecurityGroup("Тестовая группа");
        sendDataDescriptionSecurityGroup("Тестовое описание");
        clickOnButtonSave();
        checkSaveResultPopup();
    }
 
    @Feature("Тестирование функции редактирования группы безопасности")
    @Tag("update")
    @Test
    @Description("Обновления группы безопасности")
    public void updateSecurityGroup () {
        openAdminModule();
        loginIntoModule("admin","1");
        clickTabSecurityGroups();
        matCellCheckSaveResultSecurityGroupsPage("Тестовая группа");
        matCellClickSecurityGroupsPage();
        clearInputField("Название");
        sendDataNameSecurityGroup("Переименованная группа");
        clickOnButtonSave();
        checkSaveResultPopup();
    }
 
    @Feature("Тестирование функции удаления группы безопасности")
    @Tag("delete")
    @Test
    @Description("Удаление группы безопасности")
    public void deleteSecurityGroup () {
        openAdminModule();
        loginIntoModule("admin","1");
        clickTabSecurityGroups();
        matCellCheckSaveResultSecurityGroupsPage("Переименованная группа");
        matCellClickSecurityGroupsPage();
        clickOnDeleteButton();
        clickOnDeleteButtonInDialogContainer();
        matCellCheckDeleteResult("Переименованная группа");
    }
}
```
* Аннотации в коде:

@Epic - Указываем наименование тестируемого модуля;

@Feature - Фича для проведения автотеста по сценарию;

@Tag - Тэги групп автотестов используемых в maven-surefire-plugin (test - suites);

@Test - Тэг для определения JUnit фреймворком что данный тест - является тестом (улыбка)

@Description - подробное описание проводимого теста;

@Step - наименование метода для взаимодействия с локатором веб элемента.

Для чего все детальное использование аннотаций в проекте, для того чтобы корректно и понятно для бизнеса отображались выполняемые шаги в группах тестов при формировании отчетности в Allure - пример http://jenkins/job/Rigspace-Autotest/800/allure/

* Фичи - добавленный функционал для проекта автотестов:

Запуск тестов локально или в Selenoid управляется переменной в классе инициализации BaseTest: 

```private final boolean LOCALE = false / true;```

Допустимое количество флаки тестов:

```-Dfailsafe.rerunFailingTestsCount=? (указать количество)```

В данной проперти возможно указать параллельное количество запуска тестовых классов на 1 ядро процессора (для Selenoid запускает несколько docker image с браузерами в такую же параллель)

```<parallel>classes</parallel>
<perCoreThreadCount>false</perCoreThreadCount>
<threadCount>5</threadCount>
```
В данной проперти возможность указания тестовых комплектов, CREATE / UPDATE / DELETE, и прочих запрограммированных сьютов.

```-Dgroups=\"create\"```

В данной проперти возможно указать браузер на котором нужно запускать тесты, все поддерживаемые браузеры конфигурируются в базовом классе BrowserFactory.

```-Dbrowser=CHROME / FIREFOX```

* Отчетность:

Результаты FAIL тестов падают с Allure отчетностью на источники которые указаны в Jenkinsfile а именно:

Slack канал - qa-automation-ci;
Корпоративная почта.
