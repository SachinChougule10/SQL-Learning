-- Method 1:- While creating a table

CREATE TABLE friends
(
	first_name VARCHAR(25),
    last_name VARCHAR(25),
    loan DECIMAL(5,2)   DEFAULT 0.00
);

INSERT INTO friends(first_name,last_name)
VALUES
('Sam','Dravid'),
('Ram','Tendulkar'),
('Sham','Sehwag'),
('Ms','Dhoni');

SELECT*FROM friends;

-- Method 2:- giving default values to already existing table

ALTER TABLE friends
ALTER loan SET DEFAULT 100.00;

INSERT INTO friends (first_name,last_name)
VALUES
('Yuvraj','Singh'),
('KL','Rahul'),
('AB','Devilliers'),
('Ravindra','Jadeja');

SELECT*FROM friends;
