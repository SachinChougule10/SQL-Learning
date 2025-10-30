-- All position-based operations (such as string functions or ORDER BY LIMIT) work with 1-based indexing.
-- Since MySQL is a relational database, there’s no concept of zero-based indexing like in programming languages.
--  IMPORTANT: string functions do NOT change the data stored in your table; they simply return the altered strings as a result of your query
USE headfirst;

CREATE TABLE IF NOT EXISTS location
(
	person_name VARCHAR(50),
    phone_number INT,
    location VARCHAR(50)
);

INSERT INTO location (location)
VALUES
('Seattle, WA'),
('Natchez, MS'),
('Las Vegas, NV'),
('Palo Alto, CA'),
('NYC, NY'),
('Phoenix, AZ');

-- String Functions :- String functions allow you to select part of a text column.

-- Use RIGHT() and LEFT() to select a specified number of characters from a column.

-- 1. RIGHT() :- Extracts the last specified no.of characters :-

-- RIGHT() Syntax:-
-- RIGHT(string, length)
	-- string – The text or column to extract characters from.
	-- length – The number of characters to extract from the right.

SELECT RIGHT (location, 2) FROM location;
-- Extracts the last 2 characters from the location column.

-- 2. LEFT() :- Extracts the first specified no.of characters :-

-- LEFT() Syntax:

-- LEFT(string, length)
	-- string – The text or column to extract characters from.
	-- length – The number of characters to extract from the left.

SELECT LEFT (location, 3) FROM location;
-- Extracts the first 3 characters from the location column.
-- Useful for grabbing prefixes, initials, or any part of the string from the start.

-- 3.SUBSTRING INDEX () :-  Extract Text Before or After a Specific Character :-

-- SUBSTRING_INDEX() splits the string and returns a part of it based on a delimiter.

-- Syntax:

-- SUBSTRING_INDEX(string, delimiter, count)

-- i.string – The column or text to be processed.
-- ii.delimiter – The character(s) that separate the parts of the string.
-- iii.count –
	-- Positive value → Returns everything before the specified number of occurrences of the delimiter.
	-- Negative value → Returns everything after the specified number of occurrences of the delimiter.

SELECT SUBSTRING_INDEX(location,',',1) FROM location;
-- Gets all the text before the first comma

SELECT SUBSTRING_INDEX(location,',',-1) FROM location;
-- Gets all the text after the last comma

-- NOTE :- This is the tricky part. It’s “1” because it’s looking for the first comma. If it were “2” it would keep going until it found a second 
-- comma and grab everything in front of that.

SELECT * FROM location;

-- When to Use These Functions:

-- RIGHT() / LEFT() → When you need fixed-length string extraction.
-- SUBSTRING_INDEX() → When you need to extract parts of a string based on delimiters.

-- 4. SUBSTRING():- Extracts part of a string.

-- SYNTAX :-
	-- SUBSTRING(string, start_position, length)
    
		-- i.string – The text or column.
		-- ii.start_position – Where to start (1-based).
		-- iii.length – How many characters to return.
        
SELECT SUBSTRING(location,5,4) FROM location;

-- 5.UPPER() and LOWER() :-Converts the string to uppercase or lowercase.

SELECT UPPER('uSa');
SELECT LOWER('JAPAN');

-- 6.REVERSE() :- Reverses the order of characters in a string.

SELECT REVERSE('Sachin');

-- 7.LTRIM() and RTRIM() :- Removes extra spaces from the left or right of a string.

SELECT RTRIM('   Tokyo    ');
SELECT LTRIM('  Berlin   ');

-- 8.LENGTH() :-Returns the number of characters in a string (including spaces):-

SELECT LENGTH('Sachin Chougule 111'); 