#!/bin/bash
#Определение функции
hello() {
    local name="$1"
    echo "Привет, $name!"
}

#Вызов функции
hello "Миша"
hello "Маша"
