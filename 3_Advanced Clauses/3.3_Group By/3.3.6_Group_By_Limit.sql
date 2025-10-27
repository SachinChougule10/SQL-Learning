-- Imagine we had not four, but forty Girl Sprouts. How could we use SUM to work out the second position?

-- LIMIT() :- The LIMIT clause is used to restrict the number of rows returned by a SQL query.

-- We want to limit our results to first two
SELECT first_name, SUM(sales)
FROM sales_table
GROUP BY first_name
ORDER BY SUM(sales) DESC
LIMIT 2;

-- LIMIT with two parameters:- 

SELECT first_name, SUM(sales)
FROM sales_table
GROUP BY first_name
ORDER BY SUM(sales) DESC
LIMIT 0,4;

-- 0 → Starting position (0-based index, so start from the first row), 4 → Number of rows to return (not the ending index)
-- Indexing starts with 0

-- Write the query that will get us the second result and only the second result using the LIMIT clause with two parameters.

SELECT first_name, SUM(sales)
FROM sales_table
GROUP BY first_name
ORDER BY SUM(sales)
LIMIT 1,1;