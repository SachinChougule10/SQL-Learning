
CREATE TABLE transations
(
	transaction_id INT PRIMARY KEY,
    amount DECIMAL (5,2)

);

RENAME TABLE transations TO transactions;

SELECT* FROM transactions;

INSERT INTO transactions
VALUES
(100,333.33),
(101,666.33),
(103,505.66);

-- adding primary key to already existing table

ALTER TABLE friends
ADD CONSTRAINT PRIMARY KEY(first_name);