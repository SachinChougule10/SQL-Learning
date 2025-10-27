CREATE TABLE sales_table
(
	ID INT,
    first_name VARCHAR(50),
    sales DECIMAL(10,2),
    sales_date DATE

);


INSERT INTO sales_table (ID, first_name, sales, sales_date) VALUES
(1, 'Lindsay', 32.02, '2007-03-06'),
(2, 'Paris', 26.53, '2007-03-06'),
(3, 'Britney', 11.25, '2007-03-06'),
(4, 'Nicole', 18.96, '2007-03-06'),
(5, 'Lindsay', 9.16, '2007-03-07'),
(6, 'Paris', 1.52, '2007-03-07'),
(7, 'Britney', 43.21, '2007-03-07'),
(8, 'Nicole', 8.05, '2007-03-07'),
(9, 'Lindsay', 17.62, '2007-03-08'),
(10, 'Paris', 24.19, '2007-03-08'),
(11, 'Britney', 3.40, '2007-03-08'),
(12, 'Nicole', 15.21, '2007-03-08'),
(13, 'Lindsay', 0.00, '2007-03-09'),
(14, 'Paris', 31.99, '2007-03-09'),
(15, 'Britney', 2.58, '2007-03-09'),
(16, 'Nicole', 0.00, '2007-03-09'),
(17, 'Lindsay', 2.34, '2007-03-10'),
(18, 'Paris', 13.44, '2007-03-10'),
(19, 'Britney', 8.78, '2007-03-10'),
(20, 'Nicole', 26.82, '2007-03-10'),
(21, 'Lindsay', 3.71, '2007-03-11'),
(22, 'Paris', 0.56, '2007-03-11'),
(23, 'Britney', 34.19, '2007-03-11'),
(24, 'Nicole', 7.77, '2007-03-11'),
(25, 'Lindsay', 16.23, '2007-03-12'),
(26, 'Paris', 0.00, '2007-03-12'),
(27, 'Britney', 4.50, '2007-03-12'),
(28, 'Nicole', 19.22, '2007-03-12');


-- The Girl with the largest total amount sold will win. It’s crucial to figure out the correct winner

SELECT first_name, sales FROM sales_table
ORDER BY first_name;

--  The sales for each girl still had to be added together manually to find the winner.
--  SUM can add them for us
-- The SQL language has some special keywords, called functions. Functions are bits of code that perform an operation on a value or values.
-- We’ll use the SUM function which works by totaling the values in a column designated by parentheses.

SELECT SUM(sales) FROM sales_table
WHERE first_name = 'Nicole';

-- We calculated sum of sales of a single girl - NICOLE.
-- But using this approach, we would need to calculate SUM(sales) multiple times for multiple girls.

--  We can SUM all of them at once with GROUP BY 
-- There is a way to SUM each of the girl’s sales at the same time. We’ll just add a GROUP BY to our SUM statement. This groups all of the first name values for each girl and totals the sales for this group.

SELECT first_name, SUM(sales) FROM sales_table
GROUP BY first_name
ORDER BY SUM(sales) DESC;

-- SQL actually executes this query in the following logical order:

-- 		Step	         Clause	                             	What it Does
-- 		1        	FROM sales_table	          		Reads all rows from the sales_table.
-- 		2       	GROUP BY first_name	          		Groups all rows by each unique first_name. Example: all "Lindsay" rows together.
-- 		3           SELECT	                  			For each group, it computes SUM(sales) and returns first_name + sum.
-- 		4       	ORDER BY SUM(sales) DESC	      	Sorts the result based on the total sales per person, highest first.


-- We got Britney as winner


SELECT * FROM sales_table;
