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





