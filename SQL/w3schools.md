[![N|Solid](https://upload.wikimedia.org/wikipedia/commons/3/3e/W3Schools_logo.png)](https://www.w3schools.com/sql/default.asp)

# SQL Statements
## SQL SELECT
Exercise 1: Insert the missing statement to get all the columns from the Customers table.
```sql
SELECT * FROM Customers;
```
Exercise 2: Write a statement that will select the City column from the Customers table.
```sql
SELECT City FROM Customers;
```
Exercise 3: Select all the different values from the Country column in the Customers table.
```sql
SELECT DISTINCT Country FROM Customers;
```
## SQL WHERE
Exercise 1: Select all records where the City column has the value "Berlin".
```sql
SELECT * FROM Customers
WHERE CITY = 'BERLIN';
```
Exercise 2: Use the NOT keyword to select all records where City is NOT "Berlin".
```sql
SELECT * FROM Customers 
WHERE NOT CITY = 'BERLIN';
```
Exercise 3: Select all records where the CustomerID column has the value 32.
```sql
SELECT * FROM Customers
WHERE CustomerID = 32;
```
Exercise 4: Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 12209.
```sql
SELECT * FROM Customers
WHERE City = 'Berlin' AND POSTALCODE = 12209;
```
Exercise 5: Select all records where the City column has the value 'Berlin' or 'London'.
```sql
SELECT * FROM Customers
WHERE City = 'Berlin' OR City = 'London';
```
## SQL ORDER BY
Exercise 1: Select all records from the Customers table, sort the result alphabetically by the column City.
```sql
SELECT * FROM Customers
ORDER BY City;
```
Exercise 2: Select all records from the Customers table, sort the result reversed alphabetically by the column City.
```sql
SELECT * FROM Customers
ORDER BY City DESC;
```
Exercise 3: Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City.
```sql
SELECT * FROM Customers
ORDER BY Country, City;
```
## SQL INSERT
Exercise 1: Insert a new record in the Customers table.
```sql
INSERT INTO Customers (CustomerName, Address, City, PostalCode,Country)
VALUES ('Hekkan Burger', 'Gateveien 15', 'Sandnes', '4306', 'Norway');
```
## SQL NULL
Exercise 1: Select all records from the Customers where the PostalCode column is empty.
```sql
SELECT * FROM Customers
WHERE PostalCode IS NULL;
```
Exercise 2: Select all records from the Customers where the PostalCode column is NOT empty.
```sql
SELECT * FROM Customers
WHERE PostalCode IS NOT NULL;
```
## SQL UPDATE
Exercise 1: Update the City column of all records in the Customers table.
```sql
UPDATE Customers
SET City = 'Oslo';
```
Exercise 2: Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
```sql
UPDATE Customers
SET City = 'Oslo'
WHERE Country = 'Norway';
```
Exercise 3: Update the City value and the Country value.
```sql
UPDATE Customers
SET City = 'Oslo, Country = 'Norway'
WHERE CustomerID = 32;
```
## SQL DELETE
Exercise 1: Delete all the records from the Customers table where the Country value is 'Norway'.
```sql
DELETE FROM Customers
WHERE Country = 'Norway';
```
Exercise 2: Delete all the records from the Customers table.
```sql
DELETE FROM Customers;
```
## SQL FUNCTION
Exercise 1: Use the MIN function to select the record with the smallest value of the Price column.
```sql
SELECT MIN(Price)
FROM Products;
```
Exercise 2: Use an SQL function to select the record with the highest value of the Price column.
```sql
SELECT MAX(Price)
FROM Products;
```
Exercise 3: Use the correct function to return the number of records that have the Price value set to 18.
```sql
SELECT COUNT(*)
FROM Products
WHERE Price = 18;
```
Exercise 4: Use an SQL function to calculate the average price of all products.
```sql
SELECT AVG(Price)
FROM Products;
```
Exercise 5: Use an SQL function to calculate the sum of all the Price column values in the Products table.
```sql
SELECT SUM(Price)
FROM Products;
```
## SQL LIKE
Exercise 1: Select all records where the value of the City column starts with the letter "a".
```sql
SELECT * FROM Customers
WHERE City LIKE 'a%';
```
Exercise 2: Select all records where the value of the City column ends with the letter "a".
```sql
SELECT * FROM Customers
WHERE City LIKE '%a';
```
Exercise 3: Select all records where the value of the City column contains the letter "a".
```sql
SELECT * FROM Customers
WHERE City LIKE '%a%';
```
Exercise 4: Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
```sql
SELECT * FROM Customers
WHERE City LIKE 'a%b';
```
Exercise 5: Select all records where the value of the City column does NOT start with the letter "a".
```sql
SELECT * FROM Customers
WHERE City NOT LIKE 'a%';
```
## SQL WILDCARDS
Exercise 1: Select all records where the second letter of the City is an "a".
```sql
SELECT * FROM Customers
WHERE City LIKE '_a%';
```
Exercise 2: Select all records where the first letter of the City is an "a" or a "c" or an "s".
```sql
SELECT * FROM Customers
WHERE City LIKE '[acs]%';
```
Exercise 3: Select all records where the first letter of the City starts with anything from an "a" to an "f".
```sql
SELECT * FROM Customers
WHERE City LIKE '[a-f]%';
```
Exercise 4: Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
```sql
SELECT * FROM Customers
WHERE City LIKE '[!acf]%';
```
## SQL IN
Exercise 1: Use the IN operator to select all the records where Country is either "Norway" or "France".
```sql
SELECT * FROM Customers
WHERE Country IN ('Norway', 'France');
```
Exercise 2: Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
```sql
SELECT * FROM Customers
WHERE Country NOT IN ('Norway', 'France');
```
## SQL BETWEEN
Exercise 1: Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20.
```sql
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;
```
Exercise 2: Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
```sql
SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;
```
Exercise 3: Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
```sql
SELECT * FROM Products
WHERE ProductName BETWEEN 'Geitost' AND 'Pavlova';
```
## SQL ALIAS
Exercise 1: When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
```sql
SELECT CustomerName, Address, PostalCode AS Pno
FROM Customers;
```
Exercise 2: When displaying the Customers table, refer to the table as Consumers instead of Customers.
```sql
SELECT *
FROM Customers AS Consumers;
```
## SQL JOINS
Exercise 1: Insert the missing parts in the JOIN clause to join the two tables Orders and Customers, using the CustomerID field in both tables as the relationship between the two tables.
```sql
SELECT *
FROM Orders
LEFT JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
```
Exercise 2: Choose the correct JOIN clause to select all records from the two tables where there is a match in both tables.
```sql
SELECT *
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
```
Exercise 3: Choose the correct JOIN clause to select all the records from the Customers table plus all the matches in the Orders table.
```sql
SELECT *
FROM Orders
RIGHT JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
```
## SQL GROUP BY
Exercise 1: List the number of customers in each country.
```sql
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;
```
Exercise 2: List the number of customers in each country, ordered by the country with the most customers first.
```sql
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country ORDER BY COUNT(CustomerID) DESC;
```
## SQL DATABASE
Exercise 1: Write the correct SQL statement to create a new database called testDB.
```sql
CREATE DATABASE testDB;
```
Exercise 2: Write the correct SQL statement to delete a database named testDB.
```sql
DROP DATABASE testDB;
```
Exercise 3: Write the correct SQL statement to create a new table called Persons.
```sql
CREATE TABLE Persons (
  PersonID int,
  LastName varchar(255),
  FirstName varchar(255),
  Address varchar(255),
  City varchar(255) 
);
```
Exercise 4: Write the correct SQL statement to delete a table called Persons.
```sql
DROP TABLE Persons;
```
Exercise 5: Use the TRUNCATE statement to delete all data inside a table.
```sql
TRUNCATE TABLE Persons;
```
Exercise 6: Add a column of type DATE called Birthday.
```sql
ALTER TABLE Persons
ADD Birthday date;
```
Exercise 7: Delete the column Birthday from the Persons table.
```sql
ALTER TABLE Persons
DROP COLUMN Birthday;
```
