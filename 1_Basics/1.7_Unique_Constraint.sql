CREATE TABLE products
(
	product_id INT,
    product_name VARCHAR(25),
    product_price DECIMAL(4,2)
);

-- if we forgot to define an unique key during table creation,we can later add it using ALTER command--

ALTER TABLE products
ADD CONSTRAINT UNIQUE(product_name);

INSERT INTO products
VALUES
(10,'Burger',25.20),
(20,'Pizza',50.36),
(30,'Frankie',50.00);

-- We cannot enter burger 2 times in the product_name column,it will give an error
-- (40,'Burger',82.00);

SELECT * FROM products;