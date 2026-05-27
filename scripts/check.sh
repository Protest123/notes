#!/bin/bash
if [ "$1" == "hello" ]; then
    echo "И тебе привет!"
elif [ "$1" == "bye" ]; then
    echo "Пока!"
else
    echo "Я не понимаю аргумент: $1"
fi

# Проверка файла
if [ -f /etc/passwd ]; then
    echo "Файл /etc/passwd существует"
fi

#Проверка каталога
if [ -d /home/misha ]; then
    echo "Каталог /home/misha существует"
fi
