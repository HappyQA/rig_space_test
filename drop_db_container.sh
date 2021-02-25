#!/bin/bash

echo "Удаление содержимого схемы rigspace"
mysql -u root -ptetraroot --host=127.0.0.1 --port=33069 -e "drop database rigspace"

echo "Создание пустой схемы rigspace"
mysql -u root -ptetraroot --host=127.0.0.1 --port=33069 -e "create database rigspace character set utf8"

echo "Стоп контейнер с БД"
docker stop mariadb_10.1_QAA