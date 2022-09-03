![](https://migsoft.ru/upload/iblock/ef4/ef44f3506c827eef392c01df91453755.png)

# HOMEWORK 2 

 ## 1.  Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.
```sql
CREATE TABLE employees(
id serial primary key,
employee_name varchar(50) not null
);
INSERT INTO employees (employee_name)
VALUES ('Ivan'),
       ('Piter'),
       ('Aala'),
       ('Aaleahya'),
       ('Aaleyah'),
       ('Aalijah'),
       ('Aaliyah'),
       ('Aaliyah'),
       ('Aamori'),
       ('Aanjay'),
       ('Aaralyn'),
       ('Aaric'),
       ('Aarika'),
       ('Aaron'),
       ('Aaron'),
       ('Aarshiya'),
       ('Aart'),
       ('Aart'),
       ('Aarthi'),
       ('Aarush'),
       ('Aarushi'),
       ('Aase'),
       ('Aashish'),
       ('Aashka'),
       ('Aasiya'),
       ('Aaylah'),
       ('Abagail'),
       ('Abaigael'),
       ('Abaigeal'),
       ('Aballach'),
       ('Aballach'),
       ('Byme'),
       ('Byme'),
       ('Byram'),
       ('Byrd'),
       ('Byrdene'),
       ('Byreleah'),
       ('Byrne'),
       ('Byrnes'),
       ('Byron'),
       ('Byron'),
       ('Byrtel'),
       ('Byrtwold'),
       ('Bysen'),
       ('Bysen'),
       ('Cabal'),
       ('Cabal'),
       ('Cabe'),
       ('Cable'),
       ('Cacamwri'),
       ('Cacamwri'),
       ('Cacanisius'),
       ('Cace'),
       ('Cacey'),
       ('Cacey'),
       ('Cachamwri'),
       ('Cachamwri'),
       ('Cacia'),
       ('Cadabyr'),
       ('Cadan'),
       ('Cadassi'),
       ('Cadby'),
       ('Cadda'),
       ('Cadenza'),
       ('Cadeo'),
       ('Cadha'),
       ('Cadhla'),
       ('Cadhla'),
       ('Cadi'),
       ('Cadie');
SELECT * FROM employees;
```

## 2. Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
## Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500
```sql
CREATE TABLE salary(
id serial primary key,
monthly_salary int not null
);
INSERT INTO salary (monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);
      
SELECT * FROM salary;
```

## 3. Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
## Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id 
 
 id     | employee_id | salary_id   
 ------ | ------ | ------   
 1  | 3   | 7   
 2  | 1   | 4   
 3  | 5   | 9  
 4  | 40  | 13   
 5  | 23  | 4   
 6  | 11  | 2   
 7  | 52  | 10   
 8  | 15  | 13   
 9  | 26  | 4   
 10 | 16  | 1   
 11 | 33  | 7   
 ...  | ...   | ...

```sql
CREATE TABLE employee_salary(
id serial primary key,
employee_id int unique not null,
salary_id int not null
);
INSERT INTO employee_salary(employee_id, salary_id)
VALUES 	(1, 10),
		(5, 12),
		(7, 1),
		(10, 5),
		(11, 8),
		(13, 8),
		(20, 3),
		(21, 4),
		(25, 10),
		(30, 11),
		(35, 12),
		(37, 13),
		(40, 9),
		(41, 16),
		(45, 6),
		(47, 8),
		(51, 2),
		(53, 8),
		(55, 9),
		(58, 14),
		(60, 14),
		(61, 8),
		(62, 10),
		(63, 11),
		(64, 12),
		(65, 13),
		(66, 16),
		(67, 1),
		(68, 2),
		(69, 5),
		(71, 1),
		(72, 1),
		(73, 1),
		(74, 1),
		(75, 1),
		(76, 1),
		(77, 1),
		(78, 1),
		(79, 1),
		(80, 1);
	
SELECT * FROM employee_salary;
```

## 4. Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
## Поменять тип столба role_name с int на varchar(30)
## Наполнить таблицу roles 20 строками:

 id     | role_name   
 ------ | ------   
 1 | Junior Python developer   
 2 | Middle Python developer   
 3 | Senior Python developer    
 4 | Junior Java developer    
 5 | Middle Java developer      
 6 | Senior Java developer       
 7 | Junior JavaScript developer       
 8 | Middle JavaScript developer       
 9 | Senior JavaScript developer        
 10 | Junior Manual QA engineer       
 11 | Middle Manual QA engineer      
 12 | Senior Manual QA engineer      
 13 | Project Manager
 14 | Designer
 15 | HR
 16 | CEO
 17 | Sales manager
 18 | Sales manager
 19 | Middle Automation QA engineer
 20 | Senior Automation QA engineer
```sql
CREATE TABLE roles(
id  serial primary key,
role_name int unique not null
);	
ALTER TABLE roles
ALTER column role_name type varchar(30) using role_name::varchar(30);
INSERT INTO roles(role_name)
VALUES 	('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	
SELECT * FROM roles;	
```

## 5. Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
## Наполнить таблицу roles_employee 40 строками:

id     | employee_id | role_id   
 ------ | ------ | ------   
 1  | 7  | 2   
 2  | 20 | 4   
 3  | 3  | 9  
 4  | 5  | 13   
 5  | 23 | 4   
 6  | 11 | 2   
 7  | 10 | 9   
 8  | 22 | 13   
 9  | 21 | 3   
 10 | 34 | 4   
 11 | 6  | 7  
 ...  | ...   | ...
```sql
CREATE TABLE roles_employee(
id serial primary key,
employee_id int unique not null,
role_id int not null,
FOREIGN KEY (employee_id)
	references employees(id),
FOREIGN KEY (role_id)
	references roles(id)
);		
INSERT INTO roles_employee (employee_id, role_id)
VALUES 	(1, 10),
		(2, 1),
		(3, 1),
		(4, 1),
		(5, 12),
		(7, 1),
		(10, 5),
		(11, 8),
		(13, 8),
		(20, 3),
		(21, 4),
		(25, 10),
		(26, 1),
		(27, 1),
		(28, 1),
		(29, 1),
		(30, 11),
		(31, 1),
		(32, 1),
		(33, 1),
		(35, 12),
		(37, 13),
		(40, 9),
		(41, 16),
		(45, 6),
		(47, 8),
		(51, 2),
		(53, 8),
		(55, 9),
		(58, 14),
		(60, 14),
		(61, 8),
		(62, 10),
		(63, 11),
		(64, 12),
		(65, 13),
		(66, 16),
		(67, 1),
		(68, 2),
		(69, 5);
	
SELECT * FROM roles_employee;	
```
![break](https://github.com/TatianaGordievskaia/HOMEWORKS/blob/main/SQL/qa_ddl.png)



