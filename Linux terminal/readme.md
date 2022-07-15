# **First homework Linux terminal commands**
1. Посмотреть где я `pdw`
2. Создать папку  `mkdir F1`
3. Зайти в папку `cd F1`
4. Создать 3 папки `mkdir f1.1 f1.2 f1.3`
5. Зайти в любую папку `cd f1.1`
6. Создать 5 файлов (3 txt, 2 json) `touch 1.txt 2.txt 3.txt 4.json 5.json`
7. Создать 3 папки `mkdir f1.1.1 f1.1.2 f1.1.3`
8. Вывести список содержимого папки `ls -la`
9. Открыть любой txt файл `vim 1.txt`
10. Написать туда что-нибудь, любой текст `i - текст`
11. Сохранить и выйти `esc, :wq`
12. Выйти из папки на уровень выше `cd ..`
13. Переместить любые 2 файла, которые вы создали, в любую другую папку `mv f1.1/{1.txt,4.json} f1.1/f1.1.1`
14. Скопировать любые 2 файла, которые вы создали, в любую другую папку `cp f1.1/{2.txt,3.txt} f1.1/f1.1.1`
15. Найти файл по имени `find -name "2.txt`
16. Просмотреть содержимое в реальном времени (команда grep) изучите как она работает `tail -F 2.txt` or *`tail -F | grep error`
17. Вывести несколько первых строк из текстового файла `head -n 3 2.txt`
18. Вывести несколько последних строк из текстового файла  `tail -n 3 2.txt`
19. Просмотреть содержимое длинного файла ( команда less) изучите как она работает `less 2.txt`, после просмотра `q (выйти)`
20. Вывести дату и время `date` 

______

# Задание*

## 1 Задание

1. Отправить http запрос на сервер `http://162.55.220.72:5005/terminal-hw-request` = **curl** `"http://162.55.220.72:5005/terminal-hw-request"`
1. Result {"Intro":"Hello!! This is your the first response from server","Tasks":{"Task_1":"Send the next URL in terminal: `http://162.55.220.72:5005/get_method?name=(set_your_String)&age=(set_your_number)","result":["Your_String","Your_number"]}}`
2. Отправить следующий http запрос с заполнением запрашиваемых данных = **curl** `"http://162.55.220.72:5005/get_method?name=(`**Tatiana**`)&age=(`**34**`)"`
3. Result = **["(Tatiana)","(34)"]**

## 2 Задание

```css
#!/bin/bash
cd foulder1
mkdir f1 f2 f3
cd f2
touch file1.txt file2.txt file3.txt file4.json file5.json
mkdir foulder21 foulder22 foulder22
ls -la
mv file1.txt file4.json foulder21
```
Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
Privacy

