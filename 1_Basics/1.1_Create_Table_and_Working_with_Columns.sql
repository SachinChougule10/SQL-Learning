CREATE DATABASE mydb;

-- another way to create a database
-- This ensures that the database is only created if it doesn’t already exist.

-- CREATE DATABASE IF NOT EXISTS DATABASE_NAME;

USE mydb;
CREATE TABLE workers
(
	employee_id INT,
	first_name VARCHAR(30),
	last_name VARCHAR(30) ,
	hourly_pay DECIMAL(5,2),
	hire_date DATE               # we should not place a comma after last colummn name     
);

-- SELECT STATEMENT 

SELECT*FROM workers;
SELECT employee_id,first_name FROM workers; 

-- DESCRIBE and DESC are the same

DESC workers;					
DESCRIBE workers;

-- RENAMING TABLE NAME 

RENAME TABLE workers TO employees;

-- ALTER and ADD command (to add a new column to an existing table)

ALTER TABLE employees ADD phone_number VARCHAR(15);
SELECT*FROM employees;

-- ALTER and RENAME command (to rename an existing column in a table)

ALTER TABLE employees RENAME COLUMN phone_number TO email;

-- ALTER and MODIFY command (to change the DATATYPE of an existing column in a table)

ALTER TABLE employees MODIFY COLUMN email VARCHAR(100) ;

-- ALTER , MODIFY and AFTER command (to change the location of an existing column in a table) 

ALTER TABLE employees MODIFY email VARCHAR(100) AFTER last_name;
SELECT * FROM employees;

-- ALTER,MODIFY and FIRST command (to change the location of an existing column and place it at FIRST/START)

ALTER TABLE employees MODIFY email VARCHAR(100) FIRST;
SELECT*FROM employees;

-- ALTER and DROP COLUMN command (to drop a specific column from a table)

ALTER TABLE employees DROP COLUMN hourly_pay;
SELECT * FROM employees;


-- There are certain columns in your table that should always have values .i.e they cannot have NULL values.
-- You can easily set up your table to not accept NULL values for columns. 


CREATE TABLE employee1
(
employee_id INT NOT NULL,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
email VARCHAR(100)
);

-- This will give a error as we didn't provide first name,last name as they are set to NOT NULL nad cannot accept/have NULL values

INSERT INTO employee1 (employee_id,email) VALUES (444,"sachin@gmail.com");

CREATE TABLE employee2
(
employee_id INT NOT NULL,
first_name VARCHAR(100) NOT NULL DEFAULT "Sachin",
last_name VARCHAR(100) NOT NULL DEFAULT "Chougule",
email VARCHAR(100)
);

-- This will not give error even though we have not passed values to the columns having NOT NULL,
-- bcoz we have given a default value to those columns

INSERT INTO employee2 (employee_id,email) VALUES (555,"rolex@gmail.com");
SELECT * FROM employee2;
 
 