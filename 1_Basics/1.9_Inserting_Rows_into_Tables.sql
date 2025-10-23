ALTER TABLE employees MODIFY email VARCHAR(100) AFTER hire_date;
ALTER TABLE employees ADD COLUMN hourly_pay FLOAT(5,2);

-- INSERTING VALUES INTO TABLE

INSERT INTO employees VALUES 
(1,"Eugene","Krabs","2024-08-11","mrkrabs100@gmail.com",25.50),
(2,"Squidward","Tentacles","2024-07-08","squidward200@gmail.com",50.00),
(3,"Spongebob","Squarepants","2024-05-06","squarepants@gmail.com",75.75),
(4,"Patrick","Star","2024-05-08","patrick@gmail.com",45.32);

-- INSERTING VALUES ONLY IN SPECIFIC COLUMNS

-- INSERT INTO employees VALUES(4,"Sheldon"); (we will get an error)
-- (if we insert less values than the no.of columns,we will get an error)
-- to avoid this error we can specify in which columns we have to insert values

INSERT INTO employees (employee_id,first_name) VALUES (4,"Sheldon");
-- now this will not give an error

-- When you're trying to insert a VARCHAR, CHAR, or BLOB containing an apostrophe, 
-- you must indicate to your RDBMS that it isn’t meant to 
-- end the text, but is part of the text and needs to be included in the row.

-- TWO WAYS TO DO SO ARE:-

-- 1. using backslash
-- 2. using an extra quote

INSERT INTO employees (first_name,email) VALUES ("Sachin",'Sachin\'s email');
INSERT INTO employees (first_name,email) VALUES ("Rolex",'Rolex''s email');
INSERT INTO employees (first_name) VALUES ('Anbu\'s name,Anbesh');


SELECT * FROM employees;

 