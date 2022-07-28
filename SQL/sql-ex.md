# Краткая информация о базе данных "Компьютерная фирма":
Схема БД состоит из четырех таблиц:
Product(maker, model, type)
PC(code, model, speed, ram, hd, cd, price)
Laptop(code, model, speed, ram, hd, price, screen)
Printer(code, model, color, type, price)
Таблица Product представляет производителя (maker), номер модели (model) и тип ('PC' - ПК, 'Laptop' - ПК-блокнот или 'Printer' - принтер). Предполагается, что номера моделей в таблице Product уникальны для всех производителей и типов продуктов. В таблице PC для каждого ПК, однозначно определяемого уникальным кодом – code, указаны модель – model (внешний ключ к таблице Product), скорость - speed (процессора в мегагерцах), объем памяти - ram (в мегабайтах), размер диска - hd (в гигабайтах), скорость считывающего устройства - cd (например, '4x') и цена - price (в долларах). Таблица Laptop аналогична таблице РС за исключением того, что вместо скорости CD содержит размер экрана -screen (в дюймах). В таблице Printer для каждой модели принтера указывается, является ли он цветным - color ('y', если цветной), тип принтера - type (лазерный – 'Laser', струйный – 'Jet' или матричный – 'Matrix') и цена - price.

### Задание: 1
Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd
```sql
SELECT model, speed, hd FROM PC
WHERE price<500;
```
### Задание: 2
Найдите производителей принтеров. Вывести: maker
```sql
SELECT DISTINCT maker FROM Product
WHERE type = 'Printer';
```
### Задание: 3
Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.
```sql
SELECT model, ram, screen FROM Laptop
WHERE price > 1000;
```
### Задание: 4
Найдите все записи таблицы Printer для цветных принтеров.
```sql
SELECT * FROM Printer
WHERE color = 'y';
```
### Задание: 5
Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.
```sql
SELECT model, speed, hd FROM PC
WHERE (cd = '12x' OR cd = '24x') AND price <600;
```
### Задание: 6
Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.
```sql
SELECT distinct Product.maker, Laptop.speed
FROM Product INNER JOIN 
Laptop ON Product.model = Laptop.model
WHERE Laptop.hd >= 10;
```
### Задание: 7
Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
```sql
SELECT Product.model, price
FROM PC INNER JOIN   
     Product ON PC.model = Product.model
WHERE maker='B'
UNION
SELECT Product.model, price 
FROM Laptop INNER JOIN   
Product ON Laptop.model = Product.model
WHERE maker='B'
UNION
SELECT Product.model, price 
FROM Printer INNER JOIN   
     Product ON Printer.model = Product.model
WHERE maker='B'
```
### Задание: 8
Найдите производителя, выпускающего ПК, но не ПК-блокноты.
```sql
SELECT maker
FROM Product
WHERE  type='PC' AND maker NOT IN (SELECT maker
FROM Product
WHERE type='Laptop')
GROUP BY maker
```
### Задание: 9
Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker
```sql
SELECT DISTINCT maker
FROM Product 
INNER JOIN PC ON PC.model = Product.model
WHERE PC.speed >=450;
```
### Задание: 10
Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price
```sql
SELECT model, price
FROM Printer
WHERE price = (SELECT MAX(price)
 FROM Printer);
```
### Задание: 11
Найдите среднюю скорость ПК.
```sql
SELECT AVG(speed)
FROM PC;
```
### Задание: 12
Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.
```sql
SELECT AVG(speed)
FROM Laptop
WHERE price > 1000;
```
### Задание: 13
Найдите среднюю скорость ПК, выпущенных производителем A.
```sql
SELECT AVG(speed)
FROM PC JOIN Product ON Product.model = PC.model
WHERE Product.maker =  'A'
```
### Задание: 15
Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD
```sql
SELECT HD
FROM PC
GROUP BY HD
HAVING COUNT(model) > = 2
```
### Задание: 16
Найдите пары моделей PC, имеющих одинаковые скорость и RAM. В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.
```sql
SELECT DISTINCT a.model, b.model, a.speed, a.ram 
FROM pc AS a, pc AS b
WHERE a.ram = b.ram AND a.speed = b.speed AND a.model > b.model
```
### Задание: 17
Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
Вывести: type, model, speed
```sql
SELECT DISTINCT Product.type, Laptop.model, speed
FROM Product, Laptop
WHERE type = 'Laptop' AND Laptop.speed < ALL (SELECT speed 
FROM PC)
```
### Задание: 18
Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price
```sql
SELECT distinct maker, price
FROM Product  INNER JOIN 
Printer ON Printer.model = Product.model
WHERE price = (SELECT MIN(price) FROM Printer WHERE color = 'y') AND color = 'y'
```
### Задание: 19
Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
Вывести: maker, средний размер экрана.
```sql
SELECT maker, AVG(screen)
FROM Product
INNER JOIN Laptop ON Laptop.model = Product.model
GROUP BY maker
```
### Задание: 20
Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей ПК.
```sql
SELECT maker, COUNT(model) AS count_model 
FROM product
WHERE type = 'PC' 
GROUP BY maker
HAVING COUNT(model) >=3
```
### Задание: 21
Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC.
Вывести: maker, максимальная цена.
```sql
SELECT maker, MAX(price)
FROM Product
INNER JOIN PC 
ON Product.model = PC.model
WHERE maker IN(SELECT maker FROM Product WHERE type = 'PC') 
GROUP BY maker
```
### Задание: 22
Для каждого значения скорости ПК, превышающего 600 МГц, определите среднюю цену ПК с такой же скоростью. Вывести: speed, средняя цена.
```sql
SELECT speed, AVG(price)
FROM PC
WHERE speed > 600
GROUP BY speed
```
### Задание: 23
Найдите производителей, которые производили бы как ПК
со скоростью не менее 750 МГц, так и ПК-блокноты со скоростью не менее 750 МГц.
Вывести: Maker
```sql
```
### Задание: 24
Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции.
```sql
```


