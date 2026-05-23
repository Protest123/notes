# Linux. Мои 20 команд

## 1. `pwd` - показать текущую папку

## 2. `ls` - показать содержимое папки
- `ls` - просто список
- `ls -la` - все файлы (включая скрытые) с подробностями

## 3. `cd` - сменить папку
- `cd /home` - перейти в /home
- `cd ~` - перейти в домашнюю папку
- `cd ..` - на уровень выше

## 4. `mkdir` - создать папку
- `mkdir my_folder`
- `mkdir -p path/to/nested/folder` # создать вложенные папки

## 5. `touch` - создать пустой файл
- `touch file.txt`

## 6. `cat` - показать содержимое файла
- `cat file.txt`

## 7. `nano` - редактировать файл
- `nano file.txt`

Ctrl+O - сохранить
Ctrl+X - выйти

## 8. `cp` - скопировать
- `cp source.txt destination.txt`
- `cp -r source_folder/ destination_folder/` # для папок

## 9. `mv` - переместить/переименовать
- `mv old_name.txt new_name.txt` # переименовать
- `mv file.txt /home/user/` # переместить

## 10. `rm` - удалить
- `rm file.txt`
- `rm -r folder/` # удалить папку
- `rm -rf folder/` # удалить без вопросов (ОСТОРОЖНО!)
---

## 11. `grep` — поиск текста
- `grep "error" log.txt`               # найти строки с "error"
- `grep -i "warning" log.txt`          # без учёта регистра
- `grep -r "TODO" ./`                  # рекурсивно по всем файлам в папке
- `grep -n "function" script.py`       # показать номера строк

## 12. `find` — поиск файлов
- `find . -name "*.txt"`               # найти все .txt в текущей папке
- `find /home -type f -size +10M`      # файлы больше 10 МБ
- `find . -type d -name "backup"`      # папки с именем backup
- `find . -mtime -1`                   # файлы, изменённые за последние 24 часа

## 13. `chmod` — права доступа
- `chmod +x script.sh`                 # сделать исполняемым
- `chmod 755 file.txt`                 # rwxr-xr-x
- `chmod 600 secret.txt`               # только для владельца
- `chmod -R 744 folder/`               # рекурсивно для всей папки

## 14. `ps` — процессы
- `ps aux`                             # все процессы
- `ps aux | grep nginx`                # найти процесс nginx

## 15. `kill` — остановить процесс
- `kill 1234`                          # вежливо завершить
- `kill -9 1234`                       # принудительно убить

## 16. `df` — место на диске
- `df -h`                              # свободное место (в GB/MB)
- `df -h /home`                        # только для конкретной папки

## 17. `du` — размер папки
- `du -sh ~/notes/`                    # общий размер папки
- `du -sh *`                           # размер всех файлов/папок

## 18. `tar` — архивы
- `tar -czf archive.tar.gz folder/`   # создать архив
- `tar -xzf archive.tar.gz`           # распаковать
- `tar -tf archive.tar.gz`            # посмотреть содержимое

## 19. `ssh` — удалённый доступ
- `ssh user@host`                      # подключиться
- `ssh user@host -p 2222`              # на другой порт

## 20. `scp` — копировать через SSH
- `scp file.txt user@host:/path/`     # скопировать на сервер
- `scp user@host:/file.txt ./`        # скачать с сервера

## 📝 Практическое задание (выполни последовательно)

```bash
# 1. Создай тестовую среду
mkdir -p ~/linux_practice/test/logs
echo "ERROR: something failed" > ~/linux_practice/test/logs/error.log

# 2. Найди ошибки в логах
grep -r "ERROR" ~/linux_practice/test/

# 3. Найди все .log файлы
find ~/linux_practice/ -name "*.log"

# 4. Заархивируй папку notes
tar -czf ~/notes_backup.tar.gz ~/notes

# 5. Посмотри размер архива
du -sh ~/notes_backup.tar.gz

# 6. Посмотри свободное место на диске
df -h
