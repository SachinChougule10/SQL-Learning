-- way to find out the actual days that cookies were sold, and that’s using the keyword DISTINCT. Not only can you use it to give you that COUNT you’ve 
-- been needing, but you can also get a list of the dates with no duplicates.

-- DISTINCT () :- 

-- SELECT DISTINCT values - First let’s look at that keyword DISTINCT without the COUNT function.

SELECT DISTINCT sales_date FROM sales_table
ORDER BY sales_date;

-- Since DISTINCT is a keyword and not a function, you don’t need parentheses around sale_date.

-- Notice that the DISTINCT goes inside the parentheses with sale_date.

SELECT COUNT(DISTINCT sales_date) FROM sales_table;

-- We don’t need an ORDER BY because  COUNT will be returning a single number. Nothing to ORDER here.


-- order by the count of distinct sales dates (i.e., who sold on the most days):

SELECT first_name, COUNT(DISTINCT sales_date)
FROM sales_table
GROUP BY first_name
ORDER BY COUNT(DISTINCT sales_date);

				-- OR--

SELECT first_name, COUNT(DISTINCT sales_date) AS active_days
FROM sales_table
GROUP BY first_name
ORDER BY active_days DESC;


-- If you want to order by the most recent sale date for each girl, use:

SELECT first_name, MAX(sales_date) AS last_sale_date
FROM sales_table
GROUP BY first_name
ORDER BY last_sale_date DESC;

-- The SQL function MAX(date_column) returns the latest (most recent) date from the specified column.


-- Similarly, MIN(date) → Earliest date.

SELECT first_name, MIN(sales_date) AS first_sale_date
FROM sales_table
GROUP BY first_name
ORDER BY first_sale_date ASC;


