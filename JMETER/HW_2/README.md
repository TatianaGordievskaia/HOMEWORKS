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

![](https://github.com/TatianaGordievskaia/HOMEWORKS/blob/main/JMETER/HW_2/screenshots/1_user_info.png)
![](https://github.com/TatianaGordievskaia/HOMEWORKS/blob/main/JMETER/HW_2/screenshots/2_user_info.png)

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
Достать из Respose значение из поля 'name' и передать в поле name запроса http://162.55.220.72:5005/test_pet_info

![](https://github.com/TatianaGordievskaia/HOMEWORKS/blob/main/JMETER/HW_2/screenshots/1_new_data.png)
![](https://github.com/TatianaGordievskaia/HOMEWORKS/blob/main/JMETER/HW_2/screenshots/2_new_data.png)

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

![](https://github.com/TatianaGordievskaia/HOMEWORKS/blob/main/JMETER/HW_2/screenshots/1_test_pet_info.png)
![](https://github.com/TatianaGordievskaia/HOMEWORKS/blob/main/JMETER/HW_2/screenshots/2_test_pet_info.png)

#### Задание ***
0) Изучать как работают Response Assertion.
1) Сделать Assertion на провекрку статус код 200
![](https://github.com/TatianaGordievskaia/HOMEWORKS/blob/main/JMETER/HW_2/screenshots/3_test_pet_info.png)

2) Сделать Assertion на провекрку 'daily_food':weight * 0.012
![](https://github.com/TatianaGordievskaia/HOMEWORKS/blob/main/JMETER/HW_2/screenshots/4_test_pet_info.png)
или
![](https://github.com/TatianaGordievskaia/HOMEWORKS/blob/main/JMETER/HW_2/screenshots/5_test_pet_info.png)

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
![](https://github.com/TatianaGordievskaia/HOMEWORKS/blob/main/JMETER/HW_2/screenshots/1_get_test_user.png)

3) Сделать Assertion на провекрку 'salary': salary
![](https://github.com/TatianaGordievskaia/HOMEWORKS/blob/main/JMETER/HW_2/screenshots/2_get_test_user.png)
или
![](https://github.com/TatianaGordievskaia/HOMEWORKS/blob/main/JMETER/HW_2/screenshots/3_get_test_user.png)

## Final reports
* [Report csv](https://github.com/TatianaGordievskaia/HOMEWORKS/blob/main/JMETER/HW_2/HW_2.csv)
* [Report jmx](https://github.com/TatianaGordievskaia/HOMEWORKS/blob/main/JMETER/HW_2/HW_2.jmx)
