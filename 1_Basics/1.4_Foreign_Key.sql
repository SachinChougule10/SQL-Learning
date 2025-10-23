CREATE TABLE Foreign1
(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(25),
    last_name VARCHAR(25)
);

INSERT INTO Foreign1(first_name,last_name)
VALUES
('Sachin','Chougule'),
('Sanket','Raskar'),
('Om','Darekar');

# creating a FOREIGN KEY

CREATE TABLE foreign2
(
	transaction_id INT,
    amount DECIMAL(5,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Foreign1(customer_id)
    
);

ALTER  TABLE foreign2
AUTO_INCREMENT = 1000;

INSERT INTO foreign2
VALUES
(1000,555.33,3),
(2000,888.22,1),
(3000,999.36,2);

SET SQL_SAFE_UPDATES=0;

DELETE FROM foreign2;

SELECT*FROM Foreign1;
SELECT*FROM foreign2;


-- ways to add foreign key to already existing table

-- ALTER TABLE Orders
-- ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

-- naming a foreign key

-- ALTER TABLE Orders
-- ADD CONSTRAINT FK_PersonOrder
-- FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);