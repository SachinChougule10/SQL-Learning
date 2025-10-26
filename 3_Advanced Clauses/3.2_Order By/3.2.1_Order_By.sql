USE headfirst;

SET SQL_SAFE_UPDATES = 0;

CREATE TABLE IF NOT EXISTS movie_table2
(
	title VARCHAR(10),
    category VARCHAR(10)
);

INSERT INTO movie_table2
VALUES
(' Aardvarks Gone Wild','family'),
('Acting Up','family'),
('13th Birthday Magic','family'),
('5th Grade Girls are Evil','family'),
('Angels','family'),
(' Art for Kids','cartoon'),
(' Are You My Mother?','cartoon'),
(' 8 Arms are Better than 2','philosophy'),
(' 101 Alsatians','biography');


ALTER TABLE movie_table2 MODIFY COLUMN title VARCHAR(50);
ALTER TABLE movie_table2 MODIFY COLUMN category VARCHAR(50);

--  ORDER BY :- you can tell SQL to SELECT something and ORDER the data it returns BY another column from the table.
-- ORDER BY allows you to alphabetically order any column.
-- using this below Query we will need to use 'LIKE' with every alphabet to get a alphabetical order till 'Z'

SELECT title, category FROM movie_table2
WHERE title LIKE 'A%' and category = 'family'
ORDER BY title;

-- Instead we can remove the LIKE part and use ORDER BY with category
-- ORDER BY without using BINARY (strict ASCII ordering) :- 
-- Even better, this list will include movies that begin with numbers in the title. They’ll be first in the list.

SELECT title, category FROM movie_table2
WHERE category = 'family'
ORDER BY title;

-- ORDER BY using BINARY (strict ASCII ordering) :- 

SELECT title, category
FROM movie_table2
WHERE category = 'family'
ORDER BY BINARY title;


SELECT * FROM movie_table2
WHERE title LIKE ' Aardvarks%';

DELETE FROM movie_table2
WHERE title LIKE ' Aardvarks Gone Wild';

INSERT INTO movie_table2 
VALUES 
('Aardvarks Gone Wild','family');

SELECT * FROM movie_table2;