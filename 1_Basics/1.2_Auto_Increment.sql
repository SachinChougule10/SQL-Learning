CREATE TABLE increment
(
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5,2)

);

# auto_increment starts by default from 1

-- Since transaction_id is AUTO_INCREMENT, it automatically assigns values:
-- 1, 2, 3, 4 for transaction_id.
-- Corresponding amounts are inserted.

INSERT INTO increment(amount)
VALUES
(333.33),
(444.44),
(555.55),
(666.66);

# we can change the value from where the increment will start

ALTER TABLE increment
AUTO_INCREMENT=1000;

SELECT * FROM increment;