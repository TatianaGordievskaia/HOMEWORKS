# HomeWork 3

## _Linux terminal (GitHub) commands & branches_

| TASK | SOLUTION |
| ------ | ------ |
| 1. На локальном репозитории сделать ветки для: | git init && touch file.txt && git commit -m "commited" |
| Postman | git branch Postman |
| Jmeter | git branch Jmeter |
| CheckLists & SQL | git branch CheckLists && git branch SQL |
| Bug Reports & Charles & Mobile Testing | git branch Bug_Reports && git branch Charles |
| 2. Запушить все ветки на внешний репозиторий | git push -u --all |

***3. В ветке Bag Reports сделать текстовый документ со структурой баг репорта***
**git checkout Bug_Reports && vim bug.txt**
*Короткое описание (Summary)
Проект (Project)
Компонент приложения (Component)
Номер версии (Version)
Серьезность (Severity)
Приоритет (Priority)
Статус (Status)
Автор (Author)
Назначен на (Assigned To)
Окружение
Шаги воспроизведения (Steps to Reproduce)
Фактический Результат (Result)
Ожидаемый результат (Expected Result)
Прикрепленный файл (Attachment)*

| TASK | SOLUTION |
| ------ | ------ |
| 4. Запушить структуру багрепорта на внешний репозиторий | git add . && git commit -m "bug" && git push |
| 5. Вмержить ветку Bug Reports в Main | git checkout main && git merge Bug_Reports |
| 6. Запушить main на внешний репозиторий | git push |


***7. В ветке CheckLists набросать структуру чек листа***
**git checkout CheckLists && vim checklist.txt**
*What we will do
What we need not to forget
What we will check*

| TASK | SOLUTION |
| ------ | ------ |
| 8. Запушить структуру на внешний репозиторий | git add . && git commit -m "checklist" && git push |
| 9. На внешнем репозитории сделать Pull Request ветки CheckLists в main | GitHub -> CheckLists had recent pushes less than a minute ago -> Compare && Pull requests -> Pull request successfully merged and closed |
| 10. Синхронизировать Внешнюю и Локальную ветки Main| git checkout main && git pull |