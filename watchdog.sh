#!/bin/bash

# Получение имени процесса

PROCESS=$1

if [ -z "$1" ]; then
	echo "Использование: $0 <имя_процесса>"
	exit 1
fi

# Проверка запущен ли процесс

if pgrep -x "$PROCESS" > /dev/null 2>&1 ; then
	echo "Процесс $PROCESS запущен (PID: $(pgrep -xn "$PROCESS"))"
else
	echo "Процесс $PROCESS не найден. Запускаю"
	$PROCESS 100&
	echo "Процесс $PROCESS запущен с PID: $!"
fi
