SET SQL_SAFE_UPDATES=0;

-- first turn off the autocommit

SET AUTOCOMMIT=OFF;

-- perform an operation

DELETE FROM employees;

-- display table,now all the records are removed from the table

SELECT * FROM employees;

-- perform rollback,now all the changes,i.e. deleting all the records is undone

ROLLBACK;

-- Operation 2--

INSERT INTO employees (employee_id,first_name)
VALUES(60,'Das');

-- if we rollback before commiting,we can undo the changes in the current transaction

ROLLBACK;

-- Operation 3--

INSERT INTO employees (first_name,employee_id)
VALUES('Arnold',50);

-- Once we have commited the changes in the current transaction,we cannot undo the changes

COMMIT;

ROLLBACK;