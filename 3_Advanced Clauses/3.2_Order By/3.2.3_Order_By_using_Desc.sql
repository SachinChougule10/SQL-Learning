--  SQL has a keyword that reverses the order.
-- By default, SQL returns your ORDER BY columns in ASCENDING order. This means that you always get A to Z and 1 to 99,999. 
-- If you would prefer the order to be reversed, you want the data in descending order. You can use the keyword DESC right after the column name.

SELECT * FROM movie_table3
ORDER BY purchased DESC, TRIM(title);

-- Here purchased date will be sorted in DESCENDING order i.e. newst date first and if duplicate records are found in purchased, SQL will sort acc to title which will be in ASCENDING order
-- If we want to order our data from Z to A or from 9 to 1, we have to use the DESC keyword.


