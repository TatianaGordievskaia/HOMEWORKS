![](https://migsoft.ru/upload/iblock/ef4/ef44f3506c827eef392c01df91453755.png)

# HOMEWORK 2 

1. Создать таблицу phones_samsung
```sql
CREATE TABLE phones_samsung(
 id serial primary key,
 model varchar(40),
 ram int not null,
 front_camera int,
 price int);
 ```
 2. Добавить в таблицу phones_samsung
 ```sql
 INSERT INTO phones_samsung(model, ram, front_camera, price)
VALUES ('A50', 6, 10, 300),
       ('A50', 8, 10, 400),
       ('A52', 8, 16, 500),
       ('S20', 8, 24, 1500),
       ('S21', 8, 12, 1000),
       ('S22', 6, 12, 1200),
       ('A71', 6, 12, 1200),
       ('A91', 4, 12, 1900),
       ('A57', 8, 8, 900),
       ('A32', 8, 4, 800),
       ('A33', 8, 5, 750),
       ('A43', 8, 5, 850);
  ```
3. Создать таблицу samsung_orders
```sql
CREATE TABLE samsung_orders
( id serial primary key,
 phone_id int);
 ```


