## HW_1 Jmeter

Сделать сценарий с перечисленными эндпоинтами

Дать нагрузку на 50, 250, 500 потоков.
Результаты прогонов ввгрузить в CSV, на занятии посмотрим что и как.
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
