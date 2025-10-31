CREATE DATABASE IF NOT EXISTS headfirst;
USE headfirst;

-- SELECT DATABASE() is used to check which database is currently in use.
-- It returns the name of the currently selected database.
-- If no database is selected, it returns NULL.

SELECT DATABASE();


-- 1. You can add it to a column that doesn’t have it like this: 

-- ALTER TABLE your_table CHANGE your_id 
-- your_id INT(11) NOT NULL AUTO_INCREMENT; 

-- 2. And you can remove it like this: 

-- ALTER TABLE your_table CHANGE your_id 
-- your_id INT(11) NOT NULL;

-- (See this execution in multiple ways to create primary key file )

CREATE TABLE my_contacts
(
	contact_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    PRIMARY KEY(contact_id)							-- one of the way to create a PRIMARY KEY
);

DESC my_contacts;

INSERT INTO my_contacts(contact_id,first_name,last_name)
VALUES(NULL,'Alice','Johnson');								--  the AUTO_INCREMENT simply ignores the NULL (here it started with 1)

INSERT INTO my_contacts(contact_id,first_name,last_name)
VALUES(1,'Joe','Black');

INSERT INTO my_contacts
VALUES(2,'Tony','Jackson');

INSERT INTO my_contacts(first_name,last_name)
VALUES('Christian','Bale');

INSERT INTO my_contacts
VALUES (99,'Ben','Affleck');

-- The next time we INSERT a new record, the contact_id column will be given a value one,
-- higher than the highest contact_id in the table. If the last record has a contact_id of 23, the next one will be 24.

INSERT INTO my_contacts(first_name,last_name)
VALUES('Alisha','Rich');

SELECT * FROM my_contacts;

-- IMPORTANT :-
-- AUTO_INCREMENT works only with INT or BIGINT.(doesn't work with VARCHAR())
-- You can only have one AUTO_INCREMENT column in a table.
-- The AUTO_INCREMENT column must be part of the PRIMARY KEY or UNIQUE constraint.
-- If you try to define AUTO_INCREMENT without making it a key (either PRIMARY KEY or UNIQUE), MySQL throws this error.
