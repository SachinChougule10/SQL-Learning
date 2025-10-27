-- AVG with GROUP BY 
--  We decided to give another prize to the girl with the highest daily average. We use the AVG function.

SELECT first_name, AVG(sales) FROM sales_table
GROUP BY first_name;

-- Each girl has seven days of sales. For each girl, the AVG function adds together her sales and then divides it by 7. 
-- We still got Britney as winner. Now we need to find the second winner