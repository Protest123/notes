#!/bin/bash

# Переменные

TARGET="${1:-.}"

# Список расширений и счётчик

EXTS="tmp save swp"
count=0

# Проверяем существует ли папка

if [ ! -d "$TARGET" ]; then
   echo "Ошибка: каталог $TARGET не существует"
   exit 1
fi

# Цикл удаления

for ext in $EXTS; do
    for file in "$TARGET"/*.$ext; do
       if [ -f "$file" ]; then
       rm "$file"
       echo "Файл: $file удалён"
       ((count++))
       fi
    done
done
echo "Готово! Удалено файлов: $count"

