--  We take a quick look at the MIN and MAX values from the table to see if any of the other 
-- girls had a larger sale value for a single day, or even if Britney had a worse day and got a lower value than any of the others

-- We can use the function MAX to find the largest value in a column. MIN will give us the smallest value in a column. 
-- We will find the maximun single 

SELECT first_name, MAX(sales) FROM sales_table
GROUP BY first_name;

-- MAX returns the single largest sale value for each girl
-- Britney has the highest single day sales.


SELECT first_name,MIN(sales) FROM sales_table
GROUP BY first_name;

-- still Britney is a winner, we need to find some other way to find a second winner