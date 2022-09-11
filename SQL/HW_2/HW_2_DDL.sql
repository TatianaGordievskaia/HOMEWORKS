create table employees(
id serial primary key,
employee_name varchar(50) not null
);

insert into employees (employee_name)
values ('Ivan'),
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

select * from employees;

create table salary(
id serial primary key,
monthly_salary int not null
);
insert into salary (monthly_salary)
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
      
select * from salary;

create table employee_salary(
id serial primary key,
employee_id int unique not null,
salary_id int not null
);
insert into employee_salary(employee_id, salary_id)
values 	(1, 10),
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
	
select * from employee_salary;

create table roles(
id  serial primary key,
role_name int unique not null
);	

alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

insert into roles(role_name)
values 	('Junior Python developer'),
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
	
select * from roles;	

create table roles_employee(
id serial primary key,
employee_id int unique not null,
role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)
);		

insert into roles_employee (employee_id, role_id)
values 	(1, 10),
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
	
select * from roles_employee;	
