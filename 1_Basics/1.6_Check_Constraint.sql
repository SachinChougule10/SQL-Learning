-- method 1:-To add CHECK constraint while creating a table

CREATE TABLE payment
(
	First_name VARCHAR(25),
    last_name VARCHAR(25),
    Hourly_pay DECIMAL(4,2)
	CONSTRAINT chk_pay CHECK(Hourly_pay >=100)
);

ALTER TABLE payment
MODIFY Hourly_pay DECIMAL(5,2);

INSERT INTO payment
VALUES
('Sachin','Chougule',120.00),
('Sanket','Raskar',300.20),
('Om','Darekar',500.30);

-- we cannot insert hourly_pay less than 100,it will give an error:- check constraint chk_pay is violated
-- ('Raju','Rastogi',20.00);

SELECT * FROM payment;

-- method 2:- Adding CHECK constraint after a table is created/to an already existing table

ALTER TABLE employees
ADD CONSTRAINT chk1_pay CHECK(hourly_pay<200);

INSERT INTO employees(hourly_pay)
VALUES (199);


SELECT * FROM employees;

-- Method 3:- we can add CHECK without naming it

ALTER TABLE products
MODIFY product_price DECIMAL(5,2);

ALTER TABLE products
ADD  CHECK(product_price<100);

INSERT INTO products
VALUES(20,'Sandwich',60.00);

SELECT* FROM products;

-- we cannot add product_price greater than 100
-- INSERT INTO products
-- VALUES (20,'Icecream',101.00);

-- DROP CHECK    (we cannot DROP CHECK if it doesn't have a name)

-- we cannot add employee_id greater than 100

ALTER TABLE workers
ADD CONSTRAINT work_chk CHECK (employee_id<100);

-- we dropped the CHECK constraint

ALTER TABLE workers
DROP CHECK work_chk;

-- now we can add employee_id greater than 100,as we dropped the CHECK constraint

INSERT INTO workers(employee_id)
VALUES(101);

SELECT * FROM workers;


