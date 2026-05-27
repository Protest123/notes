#!/bin/bash
#Цикл по списку слов
for fruit in яблоко груша апельсин
do
    echo "Фрукт: $fruit"
done

#Цикл по файлам в каталоге
echo "Файл в текущем катологе:"
shopt -s nullglob   # если нет файлов — цикл не выполнится
for file in *.txt
do
    echo " → $file"
done

#Цикл с числовым диапозоном
for i in {1..5}
do
    echo "Итерация номер $i"
done
