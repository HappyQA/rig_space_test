#!/bin/bash

echo "Запуск контейнера с БД"
cd /var/lib/jenkins/workspace/Rigspace-Autotest/db_QAA && docker-compose up -d

echo "Ожидаение поднятия контейнера"
sleep 5

echo "Накатываем бэкап БД для тестов"
mysql -u root -ptetraroot --host=127.0.0.1 --port=33069 rigspace < /var/lib/jenkins/workspace/Rigspace-Autotest/db_QAA/dumps/dumpForTest.sql