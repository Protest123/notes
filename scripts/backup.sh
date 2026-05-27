#!/bin/bash

# Резервное копирование

SOURCE=~/notes
BACKUP_DIR=~/backups
DATE=$(date +%Y-%m-%d_%H-%M-%S)

# Собираем имя файла бэкапа

BACKUP_FILE=$BACKUP_DIR/notes_$DATE.tar.gz

#Проверяем, существует ли католог

if [ ! -d "$SOURCE" ]; then
    echo "Ошибка: каталог $SOURCE не найден!"
    exit 1
fi

# Создаём каталог для бжеков

mkdir -p "$BACKUP_DIR"

# Создаём архив

tar -czf "$BACKUP_FILE" "$SOURCE"

# Проверяем создался ли архив

if [ -f "$BACKUP_FILE" ]; then
    echo "Бэкап создан: $BACKUP_FILE"
    echo "Размер: $(du -h "$BACKUP_FILE" | cut -f1)"
else
    echo "Ошибка при создании бэкапа!"
    exit 1
fi
