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
