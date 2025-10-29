SHOW DATABASES;     -- Show all databases
USE headfirst;

SELECT DATABASE();    -- Show currently selected database

SHOW TABLES;		-- Show all tables in the current database
SHOW TABLES FROM headfirst;  -- Show tables from a specific database

SHOW COLUMNS FROM teachers_db;      -- Show the structure of a table (DESCRIBE is an alias, gives same results as DESC)

SHOW FULL COLUMNS FROM students_db;		-- Show column details like type, key, etc.

