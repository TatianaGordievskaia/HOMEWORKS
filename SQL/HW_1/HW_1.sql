
SELECT * FROM students;

SELECT *  FROM students;

SELECT Id  FROM students;

SELECT name  FROM students;

SELECT email FROM students;

SELECT name, email FROM students;

SELECT Id, name, email, created_on FROM students;

SELECT * FROM students 
WHERE password = '12333';

SELECT * FROM students 
WHERE created_on = '2021-03-26 00:00:00';

SELECT * FROM students 
WHERE name LIKE '%Anna%';

SELECT * FROM students 
WHERE name LIKE '%8';

SELECT * FROM students 
WHERE name LIKE '%a%';

SELECT * FROM students 
WHERE created_on = '2021-07-12 00:00:00';

SELECT * FROM students 
WHERE created_on = '2021-07-12 00:00:00' AND password = '1m313';

SELECT * FROM students 
WHERE created_on = '2021-07-12 00:00:00' AND name LIKE '%Andrey%';

SELECT * FROM students 
WHERE created_on = '2021-07-12 00:00:00' AND name LIKE '%8%';

SELECT * FROM students 
WHERE Id = 110;

SELECT * FROM students 
WHERE Id = 153;

SELECT * FROM students 
WHERE Id > 140;

SELECT * FROM students 
WHERE Id < 130;

SELECT * FROM students 
WHERE Id < 127 OR Id > 188 ;

SELECT * FROM students 
WHERE Id >= 137;

SELECT * FROM students 
WHERE Id <= 137;

SELECT * FROM students 
WHERE Id > 180 AND Id < 190;

SELECT * FROM students 
WHERE Id between 180 AND 190;

SELECT * FROM students 
WHERE password = '12333' 
OR password = '1m313' 
OR password = '123313';

SELECT * FROM students 
WHERE created_on = '2020-10-03 00:00:00' 
OR created_on = '2021-05-19 00:00:00' 
OR created_on = '2021-03-26 00:00:00';

SELECT MIN(Id) FROM students;

SELECT MAX(Id) FROM students;

SELECT COUNT(Id) FROM students;

SELECT Id, name, created_on FROM students
ORDER by created_on;

SELECT Id, name, created_on FROM students
ORDER by created_on DESC;

