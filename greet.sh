#!/bin/bash

# Получение текущего часа

HOUR=$(date +%H)
GREETING=$"Приятной работы"

# Условие по времени суток

if [ $HOUR -ge 6 -a $HOUR -le 11 ]; then
   GREETING="Доброе утро!"

elif [ $HOUR -ge 12 -a $HOUR -le 17 ]; then
   GREETING="Добрый день!"

elif [ $HOUR -ge 18 -a $HOUR -le 22 ]; then
   GREETING="Добрый вечер!"

else
     GREETING="Доброй ночи!"

fi

# Вывод имени

NAME="${1:-Гость}"
echo "$GREETING $NAME!"
