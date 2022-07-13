# Homework Charles

## _Traffic capture_

```sql
Protocol: http
IP: 162.55.220.72
Port: 5005
```
#### 1. Сделать и в Rewrite, и в BreakPoint (можно отключить чтобы не стопило на каждом запросе) ⁃ Подменить url в Charles чтобы в запросе ушло имя которые вы вписали в Postman, а вернулось то, которое вы подставили в Charles.

```sql
Method: GET
EndPoint: /get_method
request url params: 
 name: str
 age: int
response: 
[
    “Str”,
    “Str”
]
```

#### 2. Сделать и в Rewrite, и в BreakPoint (можно отключить чтобы не стопило на каждом запросе)
 ⁃ Подменить body в Charles так чтобы в запросе ушла salary которую вы вписали в Postman, а в u_salary_1_5_year цифра вернулась меньше оригинальной из запроса.
 
 ```sql
Method: POST
EndPoint: /user_info_3
request form data: 
 name: str
 age: int
 salary: int
response: 
{'name': name,
          'age': age,
          'salary': salary,
          'family': {'children': [['Alex', 24], ['Kate', 12]],
                     'u_salary_1_5_year': salary * 4}}
```

#### 3. Сделать и в Rewrite, и в BreakPoint (можно отключить чтобы не стопило на каждом запросе)
 ⁃ Подменить параметры запроса в Charles так, чтобы в Postman пришел ответ где другое name, daily_food > weight из запроса, а daily_sleep < weight из запроса.
 
 ```sql
Ex_3:
Method: GET
EndPoint: /object_info_1
request url params: 
 name: str
 age: int
 weight: int
response: 
{'name': name,
          'age': age,
          'daily_food': weight * 0.012,
          'daily_sleep': weight * 2.5}
```
