# Linux. Мои первые 10 команд

## 1. `pwd` - показать текущую папку
Пример:

## 2. `ls` - показать содержимое папки
- `ls` - просто список
- `ls -la` - все файлы (включая скрытые) с подробностями

## 3. `cd` - сменить папку
- `cd /home` - перейти в /home
- `cd ~` - перейти в домашнюю папку
- `cd ..` - на уровень выше

## 4. `mkdir` - создать папку
mkdir my_folder
mkdir -p path/to/nested/folder # создать вложенные папки

## 5. `touch` - создать пустой файл
touch file.txt

## 6. `cat` - показать содержимое файла
cat file.txt

## 7. `nano` - редактировать файл
nano file.txt

Ctrl+O - сохранить
Ctrl+X - выйти

## 8. `cp` - скопировать
cp source.txt destination.txt
cp -r source_folder/ destination_folder/ # для папок

## 9. `mv` - переместить/переименовать
mv old_name.txt new_name.txt # переименовать
mv file.txt /home/user/ # переместить

## 10. `rm` - удалить
rm file.txt
rm -r folder/ # удалить папку
rm -rf folder/ # удалить без вопросов (ОСТОРОЖНО!)
