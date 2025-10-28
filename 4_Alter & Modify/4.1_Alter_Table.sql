CREATE TABLE IF NOT EXISTS contact_details
(
	first_name VARCHAR(50)
);

ALTER TABLE contact_details
ADD COLUMN phone_number VARCHAR(10) FIRST;			--  FIRST puts the phone column before all the other columns

ALTER TABLE contact_details
ADD COLUMN last_name VARCHAR(10);

ALTER TABLE contact_details
ADD COLUMN email VARCHAR(10) AFTER first_name;

SELECT*FROM contact_details;