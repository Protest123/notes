# Задание: анализ логов

## Создание лог-файла

echo "ERROR: Disk full" >> test.log
echo "INFO: User login" >> test.log
echo "ERROR: Connection failed" >> test.log
echo "WARNING: High CPU" >> test.log

Оператор (>>) добавляет каждую строку в конец файла (test.log)

## Подсчёт ошибок

grep "ERROR" test.log | wc -l

`grep "ERROR" test.log`  - находит все строки `test.log` содержащие `ERROR`
`|` - передаёт все найденные строки на вход `wc`
`wc -l` - считает количество строк 
Результат `2` - в логе две строки с `ERROR`

## Извлечение сообщений об ошибках

grep "ERROR" test.log | cut -d':' -f2-

`grep "ERROR" test.log` - фильтрует строки с `ERROR`
`cut -d':' -f2-`:
 `-d':' - задаёт разделитель (двоеточие)
 `-f2-` - берёт все поля начиная со второгоо (т.е. всё после первого двоеточия) 

 Disk full
 Connection failed
Пробелы в начале строк появились, потому что cut сохранил их после разделителя.
