USE headfirst;
SHOW TABLES FROM headfirst;

-- Ways to change DATA TYPE of a column :-

-- WAY 1 :- use MODIFY COLUMN :-

ALTER TABLE project_list
MODIFY COLUMN contractor_name CHAR(20);
-- Use MODIFY to change the DATA TYPE of a specific COLUMN without changing the COLUMN NAME

-- WAY 2 :- use CHANGE COLUMN :-

ALTER TABLE project_list
CHANGE COLUMN proj_description proj_description VARCHAR(50);

-- CHANGE COLUMN command changes COLUMN NAME along with its DATA TYPE. But we can use CHANGE COLUMN command
-- to change only the DATA TYPE of the column, without changing the NAME of the column.
-- To do so, use CHANGE COLUMN with Same Old and New Name.

-- Adding more columns to the table :-

ALTER TABLE project_list
ADD COLUMN contractor_phone_number VARCHAR(10),
ADD COLUMN start_date DATE,
ADD COLUMN estimated_cost DECIMAL(7,2);

DESC project_list;