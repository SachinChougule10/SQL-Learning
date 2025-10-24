USE headfirst;

CREATE TABLE IF NOT EXISTS hooptie
(
	color VARCHAR(30),
    car_year VARCHAR(30),
    make VARCHAR(30),
    mo VARCHAR(30),
    howmuch VARCHAR(10)
);

RENAME TABLE hooptie TO car_table;

ALTER TABLE car_table
ADD COLUMN car_id INT NOT NULL AUTO_INCREMENT FIRST,
ADD COLUMN VIN VARCHAR(10) AFTER car_id,
ADD PRIMARY KEY (car_id);

ALTER TABLE car_table
MODIFY COLUMN make VARCHAR(30) AFTER VIN,
CHANGE COLUMN mo model VARCHAR(30) AFTER make;

-- Rename a specific column using RENAME COLUMN :- 

ALTER TABLE car_table
RENAME COLUMN howmuch TO price;


DESC car_table;