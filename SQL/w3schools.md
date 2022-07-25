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
