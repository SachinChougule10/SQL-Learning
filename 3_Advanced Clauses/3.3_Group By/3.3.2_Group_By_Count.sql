-- To figure out which girl sold cookies on more days than any other, we try to find out how many days the cookies were sold with the COUNT function. 

-- COUNT () :- The COUNT() function is used to count the number values i.e. number of rows in a result set (column).

-- Syntax									What it does
-- COUNT(*)							Counts all rows, including rows with NULL values
-- COUNT(column_name)				Counts non-NULL values only in the given column
-- COUNT(DISTINCT column)			Counts unique, non-NULL values in the column

SELECT COUNT(sales_date) FROM sales_table;
-- Gives the no.of rows in 'sales_date' column                  i.e. 28

SELECT COUNT(sales_date) FROM sales_table
GROUP BY first_name;
-- Gives the no.of days each girl sold the cookies              i.e. 7 (Each girl sold cookies for 7 days)

