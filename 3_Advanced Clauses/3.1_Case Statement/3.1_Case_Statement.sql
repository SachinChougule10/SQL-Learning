SET SQL_SAFE_UPDATES = 0;

USE headfirst;

CREATE TABLE IF NOT EXISTS movie_table
(
	title VARCHAR(100),
    rating VARCHAR(10),
    drama VARCHAR(10),
    comedy VARCHAR(10),
    action VARCHAR(10),
    gore VARCHAR(10),
    scifi VARCHAR(10),
    for_kids VARCHAR(10),
    cartoon VARCHAR(10),
    category VARCHAR(100)

);


INSERT INTO movie_table(title,rating,drama,comedy,action,gore,scifi,for_kids,cartoon)
VALUES
('Big Adventure','G','F','F','F','F','F','T','F'),
(' Greg: The Untold Story','PG','F','F','T','F','F','F','F'),
( 'Mad Clowns','R','F','F','F','T','F','F','F'),
 ('Paraskavedekatriaphobia','R', 'T' ,'T' ,'T', 'F', 'T', 'F', 'F' ),
 ('Rat named Darcy, A','G', 'F', 'F', 'F',' F' ,'F', 'T','F' ),
 ('End of the Line','R', 'T', 'F', 'F', 'T', 'T', 'F',' T'), 
 ('Shiny Things, The','PG', 'T', 'F', 'F', 'F', 'F', 'F','F' ),
 ('Take it Back','R', 'F', 'T', 'F', 'F',' F' ,'F',' F'),
 ('Shark Bait','G', 'F', 'F', 'F', 'F','F', 'T', 'F'), 
 ('Angry Pirate','PG', 'F', 'T', 'F', 'F', 'F', 'F','T'),
 ('Potentially Habitable Planet', 'PG', 'F' ,'T', 'F', 'F', 'T', 'F', 'F');
 
 -- To fill the category column, we can use multiple UPDATE statements like these :-
	-- 1. UPDATE movie_table SET category = 'drama' where drama = 'T';
	-- 2. UPDATE movie_table SET category = 'comedy' where comedy = 'T';
-- That seems fine for a small table, but what if you had hundreds of columns?

-- Solution :-  The CASE expression combines all the UPDATE statements by checking an existing column’s value against a condition. If it meets the condition, the 
	-- new column is filled with a specified value.It even allows you to tell your RDBMS what to do if any records don’t meet the conditions
    
-- Order matters. Two UPDATE statements may change the same column’s value :-
	-- For example, if we go through the columns in order 'Paraskavedekatriaphobia' would end up being classified as scifi, even though it might be more of a 
	-- comedy. We don’t know if it should be considered comedy, action, drama, cartoon, or scifi. Since it’s unclear where it belongs, it might best be placed in 
	-- the misc category.
 
 -- CASE statement with UPDATE :-
 
 SET SQL_SAFE_UPDATES = 0;
 
 UPDATE movie_table
 SET category =
 CASE
	 WHEN drama = 'T' THEN 'drama'
	 WHEN comedy = 'T' THEN 'comedy'
	 WHEN action = 'T' THEN 'action'
	 WHEN gore = 'T' THEN 'horror'
	 WHEN scifi = 'T' THEN 'scifi'
	 WHEN for_kids = 'T' THEN 'family'
	 WHEN cartoon = 'T' THEN 'family'
	 ELSE 'misc'
 END;


-- Change the CASE expression so that cartoons get put in the 'misc' category, not 'family'. If a cartoon has a G rating, put it in the family category. 

UPDATE movie_table
SET category = 
CASE
	WHEN drama = 'T' THEN 'drama'
    WHEN comedy = 'T' THEN 'comedy'
	WHEN action = 'T' THEN 'action'
	WHEN gore = 'T' THEN 'horror'
	WHEN scifi = 'T' THEN 'scifi'
	WHEN for_kids = 'T' THEN 'family'
	WHEN cartoon = 'T' AND rating = 'G' THEN 'family'
	ELSE 'misc'
END;
    
 -- Boss is thinking that R-rated movies should be shelved in a different section. 
 -- Let’s just create 5 new categories: horror-r ,action-r ,drama-r ,comedy-r ,scifi-r.
 -- And if there are any G-rated movies in the misc section, move ’em to Family.
 
 
 UPDATE movie_table
 SET category = 
 CASE
	WHEN drama = 'T' AND rating = 'R' THEN 'drama-r'
    WHEN comedy = 'T' AND rating = 'R' THEN 'comedy-r'
    WHEN action = 'T' AND rating = 'R' THEN 'action-r'
    WHEN gore = 'T' AND rating = 'R' THEN 'horror-r'
    WHEN scifi = 'T' AND rating = 'R' THEN 'scifi-r'
    WHEN category = 'misc' AND rating = 'G' THEN 'family'
END;

-- It turns out that the new categories are causing customers to have a tough time finding movies. Write a statement that gets rid 
-- of the new R-rated categories you just created.

UPDATE movie_table
SET category = 
CASE
	WHEN category = 'drama-r' THEN 'drama'
	WHEN category = 'comedy-r' THEN 'comedy'
	WHEN category = 'action-r' THEN 'action'
	WHEN category = 'horror-r' THEN 'horror'
	WHEN category = 'scifi-r' THEN 'scifi'
END;


--  Finally, delete all those T/F columns we don’t need anymore.

ALTER  TABLE movie_table
DROP COLUMN drama,
DROP COLUMN comedy,
DROP COLUMN action,
DROP COLUMN gore,
DROP COLUMN scifi,
DROP COLUMN for_kids,
DROP COLUMN cartoon;



 
 SELECT * FROM movie_table;
 