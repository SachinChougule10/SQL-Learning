INSERT INTO employees
VALUES(6,'Sandy','Sharma','2023-06-10','sandy@gmail.com',20.00);

SET SQL_SAFE_UPDATES=0;

-- DELETE Command--

-- DELETE command deletes all the records (the entire row(s) ) that matches the WHERE condition

DELETE FROM employees
WHERE first_name='Sandy';  -- all the rows containing first_name as 'Sandy' will be deleted.Here we had 2 rows of Sandy,both were deleted

SELECT * FROM employees;

-- UPDATE command --

-- updating only one column at a time

UPDATE employees
SET hourly_pay=100
WHERE first_name='Patrick';     -- if we do not place WHERE clause here,everyone's hourly_pay will be updated to 100

-- updating multiple columns at a time

UPDATE employees
SET last_name='Bobs',hire_date='2023-07-25',email='sheldon@gmail.com',hourly_pay=30
WHERE first_name='Sheldon';

-- we can also set NULL value to a specific column

UPDATE employees
SET hire_date=null
WHERE first_name='Patrick';