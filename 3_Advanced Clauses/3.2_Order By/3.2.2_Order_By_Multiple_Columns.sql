USE headfirst;

-- you can order multiple columns in the same statement.
-- You’re not restricted to sorting by just two columns. You can sort by as many columns as you need to get at the data you want.

CREATE TABLE IF NOT EXISTS movie_table3
(
	movie_id INT,
    title VARCHAR(50),
    rating VARCHAR(5),
    category VARCHAR(50),
    purchased DATE

);

INSERT INTO movie_table3
VALUES
(93,'Potentially Habitable Planet','PG','scifi','2001-5-2'),
(90,'Take it Back','R','comedy','2001-5-2'),
(83,' Bobby’s Adventure','G','family','2002-6-3'),
(85,' Mad Clowns','R','horror','1999-11-20'),
(86,' Paraskavedekatriaphobia','R','action','2003-4-19'),
(84,'Greg: The Untold Story','PG','action','2001-5-2'),
(88,' End of the Line','R','misc','2001-5-2'),
(89,'Shiny Things, The','PG','drama','2002-6-3'),
(87,' Rat named Darcy, A','G','family','2003-4-19'),
(92,'Angry Pirate','PG','misc','2003-4-19');



SELECT * FROM movie_table3
ORDER BY movie_id, title, rating, category, purchased;

-- Return all rows from movie_table3, sorted in the following priority order: movie_id, title, rating, category, purchased
-- SQL will only apply the second, third, etc., sort levels when duplicates are found in the previous one.
-- Since every movie_id is unique, SQL only sorts by movie_id, and ignores all other columns in the ORDER BY clause. 
-- That's why you’re not seeing the results sorted by other columns.
-- If any duplicates are found in the previous column, then only SQL sorts wrt to other columns.

-- When you use ORDER BY, it doesn’t sort just one column — it reorders the entire rows associated with the column you specify. (based on the column(s) you specify.)

-- In SQL, when using ORDER BY col1, col2, col3, here's how it works:
-- Tie-breaking rule:
-- SQL first sorts by col1.
	-- If there are ties in col1, only then it looks at col2 to break those ties.
	-- If there are still ties in col2, then it uses col3, and so on.
-- sorting starts with the first column. Other columns only come into play when there's a tie in the earlier ones
-- This is called lexicographical sorting — just like sorting names by "last name, then first name, then middle name".



SELECT * FROM movie_table3
ORDER BY movie_id ASC, rating ASC, title ASC, purchased ASC;

-- Even in this case, order by will sort rating only if we find breaking tie in movie_id. But no breaking ties are present so sorting takies place only for movie_id


SELECT * FROM movie_table3;




DESC movie_table3;