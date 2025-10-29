USE headfirst;

CREATE TABLE projekts
(
	projnumber INT(11),
    descriptionofproj VARCHAR(50),
    contractoronjob VARCHAR(10)
);

INSERT INTO projekts
VALUES
(1,'outside house painting','Murphy'),
(2,'kitchen remodel','Valdez'),
(3,'wood floor installation','Keller'),
(4,'roofing','Jackson');

-- Renaming tables :-

-- Way 1 :- Using ALTER TABLE ... RENAME TO :- (Valid, but not standard)

ALTER TABLE projekts
RENAME TO projekts1;

-- Works in MySQL. Not supported in some other SQL databases like PostgreSQL.

-- Way 2 :- Using RENAME TABLE table_name TO new_table_name :-

RENAME TABLE projekts1 TO project_list;

--  Recommended in MySQL because it allows renaming multiple tables at once. Faster and more efficient.

-- Way 3 :- Renaming multiple tables in a single command :-

RENAME TABLE teachers TO teachers_db, students TO students_db;

-- Key Difference:
-- 1.ALTER TABLE ... RENAME TO → Renames a single table.
-- 2.RENAME TABLE → Can rename multiple tables in one command.


-- ALTER and CHANGE COLUMN :-
-- alter the names of the columns and at the same time change their data types

ALTER TABLE project_list
CHANGE COLUMN projnumber proj_id INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY(proj_id);

-- Change two columns with one SQL statement :-

ALTER TABLE project_list
CHANGE COLUMN descriptionofproj proj_description VARCHAR(100),
CHANGE COLUMN contractoronjob contractor_name VARCHAR(30);

-- This method is used to change data type of a column along with its name, we can also change the data type of column,
-- without actually changing the name of the column by using the MODIFY command. (see MODIFY file)

-- When changing the data type of a column in SQL, data loss or errors may occur depending on the compatibility between the old and new data types.

-- 1. Incompatible Data Types → Error
-- ❗️ Error: Converting numeric data (e.g., salary) to a date is incompatible and results in an error.

-- 2. Compatible Data Types → Possible Data Truncation
-- When the new data type is compatible but has a smaller size or precision, the data is truncated.
-- Example: Changing VARCHAR(10) to CHAR(1)
-- Original: 'Bonzo'
-- Truncated to: 'B'
-- Reason: CHAR(1) can store only 1 character, so only the first character is retained.

-- 3. Numeric Type Changes → Precision/Scale Loss
-- When changing numeric data types, there is a risk of losing precision.
-- Example: Changing DECIMAL(10, 2) to INT
-- Original: 1234.56
-- Converted to: 1234 (decimal part is lost)

-- Best Practices:
-- 1.Backup Data: Always back up the data before altering data types.
-- 2.Check Compatibility: Verify compatibility between old and new types.
-- 3.Test on Sample Data: Run the changes on a sample dataset to check for potential data loss.


SHOW TABLES FROM headfirst;
DESC project_list;