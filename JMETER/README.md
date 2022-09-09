<div>
<img src="https://asifahmedsarja.files.wordpress.com/2019/09/jmeter-tutorial.png" **alt="Git" width="700" height="240"/>&nbsp;
</div>



# Homeworks Jmeter

## HW_1 Jmeter

Сделать сценарий с перечисленными эндпоинтами

Дать нагрузку на 50, 250, 500 потоков.
Результаты прогонов ввгрузить в CSV, на заняти посмотрим что и как.
Настройки Jmeter, файл .jmx выгружаем на гит.

```sql
Protocol: http
IP: 162.55.220.72
Port: 5005
```

#### 1) http://162.55.220.72:5005/get_method

```sql
req.
GET
name: str
age: int
```

#### 2) http://162.55.220.72:5005/user_info_2

```sql
req.
POST
name: str
age: int
salary: int
```

#### 3) http://162.55.220.72:5005/user_info_3
```sql
req.
POST
name: str
age: int
salary: int
```

#### 4) http://162.55.220.72:5005/object_info_1
```sql
req.
GET
name: str
age: int
weight: int
```

#### 5) http://162.55.220.72:5005/object_info_2
```sql
req.
GET
name: str
age: int
salary: int
```

#### 6) http://162.55.220.72:5005/object_info_3
```sql
req.
GET
name: str
age: int
salary: int
```

#### 7) http://162.55.220.72:5005/object_info_4
```sql
req.
GET
name: str
age: int
salary: int
```

## HW_2 Jmeter

### Jmeter_scripts

#### JSON Extractor:
```sh
token
$.token
1
```

#### BeanShell Assertion:
```sh
${__setProperty(token,${token})}
```


#### BeanShell PreProcessor:
```sh
String auth_token = props.get("token");
vars.put("token", auth_token);
```

#### Плагины для Jmeter

https://jmeter-plugins.org

### Задания:

#### 1) http://162.55.220.72:5005/user_info

```sh 
req. (RAW JSON)
POST
age: int
salary: int
name: str
auth_token


resp.
{'start_qa_salary':salary,
 'qa_salary_after_6_months': salary * 2,
 'qa_salary_after_12_months': salary * 2.9,
 'person': {'u_name':[user_name, salary, age],
                                'u_age':age,
                                'u_salary_1.5_year': salary * 4}
                                }
```
#### Действия:
Достать из Respose значение из поля 'qa_salary_after_6_months' и передать в поле salary запроса http://162.55.220.72:5005/new_data


#### 2) http://162.55.220.72:5005/new_data

```sh 
req.
POST
age: int
salary: int
name: str
auth_token

Resp.
{'name':name,
  'age': int(age),
  'salary': [salary, str(salary*2), str(salary*3)]}
```
#### Действия:
Достать из Respose значение из поля 'name' и передать в поле name запроса http://162.55.220.72:5005/new_data



#### 3) http://162.55.220.72:5005/test_pet_info

```sh 
req.
POST
age: int
weight: int
name: str
auth_token


Resp.
{'name': name,
 'age': age,
 'daily_food':weight * 0.012,
 'daily_sleep': weight * 2.5}
```

#### Действия:
Достать из Respose значение из поля age и передать в поле age запроса http://162.55.220.72:5005/get_test_user


#### Задание ***
0) Изучать как работают Response Assertion.
1) Сделать Assertion на провекрку статус код 200
2) Сделать Assertion на провекрку 'daily_food':weight * 0.012



#### 4) http://162.55.220.72:5005/get_test_user

```sh 
req.
POST
age: int
salary: int
name: str
auth_token

Resp.
{'name': name,
 'age':age,
 'salary': salary,
 'family':{'children':[['Alex', 24],['Kate', 12]],
 'u_salary_1.5_year': salary * 4}
  }
```
#### Действия:
#### Задание ***
0) Изучать как работают Response Assertion.
1) Сделать Assertion на провекрку статус код 200
2) Сделать Assertion на провекрку 'salary': salary
