-- To select specific columns from the table
SELECT first_name,last_name FROM employees;

-- Order of the columns will be maintained
SELECT last_name,first_name FROM employees;



-- WHERE CLAUSE (when we are looking for something specific)

-- print employees whose employee id=1 and employee id=2

SELECT * FROM employees WHERE employee_id=1;
SELECT * FROM employees WHERE employee_id=2;

-- print employees whose name = spongebob

SELECT * FROM employees WHERE first_name="Spongebob";

-- GREATER/LESS than EQUAL TO (>=) operator:- 

-- print employees whose hourly pay is greater than equal to 50

SELECT * FROM employees WHERE hourly_pay>=50;

-- print employees whose hie date is less than 2024-07-01

SELECT * FROM employees WHERE hire_date <="2024-07-01";

-- NOT EQUAL TO (!=) operator:-

SELECT * FROM employees WHERE employee_id != 1;

-- IS NULL (looks for NULL values,returns all the values which are null)

SELECT * FROM employees WHERE hire_date IS NULL;

-- SELECT * FROM employees WHERE hire_date = NULL;
-- hire_date = NULL doesn't work,it will return an empty table

-- NOT NULL (looks for non-null values,returns all the values which are not null)

SELECT*FROM employees WHERE hire_date IS NOT NULL;

SELECT *  FROM employees WHERE first_name >= "Spongebob";
SELECT *  FROM employees WHERE first_name >"Spongebob";

-- Combine TWO QUERIES using 'AND'

SELECT first_name,last_name FROM employees
WHERE employee_id=1 AND hire_date='2024-08-11';

-- Query to find FIRST NAME that starts with 'S'

SELECT first_name FROM employees
WHERE first_name>='S' AND first_name<'T';

-- 'LIKE' keyword --
-- 1. % sign:-

SELECT first_name FROM employees
WHERE first_name LIKE '%n';

SELECT first_name FROM employees
WHERE first_name LIKE 'S%';

-- 2. _ sign:-

SELECT first_name FROM employees
WHERE first_name LIKE '_n';

-- 3. Cobination of '%' and '_' sign :-

SELECT first_name FROM employees
WHERE first_name LIKE '_a%';

-- SELECTING RANGES--

-- 1. Using AND and logical operators

SELECT hire_date FROM employees
WHERE hire_date>='2024-05-05' AND hire_date<='2024-08-12';

-- 2. Using BETWEEN operator

-- For numerical values,the number after BETWEEN operator is also included in the results

SELECT hire_date FROM employees
WHERE hire_date BETWEEN '2024-05-05' AND '2024-08-12';

-- For character values,the character after BETWEEN operator is not included(only the characters before the specified character are included in the result)

SELECT first_name FROM employees
WHERE first_name BETWEEN 'E' AND 'S';

-- 'IN' Keyword --

-- instead of using all these ORs,we can simplify query using 'IN' keyword

SELECT email FROM employees
WHERE first_name='Eugene'
OR 
first_name='Sachin'
OR 
first_name='Spongebob'
OR 
first_name='Squidward';

-- using IN keyword

SELECT email FROM employees
WHERE first_name IN ('Eugene','Sachin','Spongebob','Squidward');

 -- 'NOT IN' operator --

SELECT email FROM employees
WHERE first_name NOT IN ('Eugene','Squidward');

-- 'NOT' operator--

SELECT first_name FROM employees
WHERE NOT hourly_pay  BETWEEN 25 AND 40;

SELECT first_name FROM employees
WHERE hourly_pay NOT BETWEEN 25 AND 40;

SELECT first_name FROM employees
WHERE NOT first_name LIKE 'S%'
AND NOT first_name LIKE 'R%';

-- using NOT for NULL values  

SELECT email FROM employees
WHERE NOT email IS NULL; 

SELECT email FROM employees
WHERE NOT email IS NOT NULL;

SELECT * FROM employees



