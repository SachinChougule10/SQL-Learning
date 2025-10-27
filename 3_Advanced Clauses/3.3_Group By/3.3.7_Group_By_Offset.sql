--  OFFSET :- In SQL, OFFSET is used to skip a number of rows before starting to return rows from the query result.

SELECT first_name, SUM(sales)
FROM sales_table
GROUP BY first_name
ORDER BY SUM(sales) DESC
LIMIT 2 OFFSET 2;
-- SYNTAX :- LIMIT number_of_rows OFFSET skip_count;
-- This says skip first 2 rows and allow 2 rows after that


-- We can do the same without using OFFSET 

SELECT first_name, SUM(sales)
FROM sales_table
GROUP BY first_name
ORDER BY SUM(sales) DESC
LIMIT 2, 2;

-- SYNTAX :- LIMIT <offset>, <count>

-- This says start from 2 and after that allow 2 rows

