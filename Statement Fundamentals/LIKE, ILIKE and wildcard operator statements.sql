-- LIKE, NOT LIKE and ILIKE operators are used to find a string with specific pattern
-- LIKE operator is case sensitive

-- If we want to find the row where the word starts with T then % sign in used as T%

-- % sign represents anything else that is there in the string apart from what we are trying 
-- to find

-- % and _ (underscore) are called wildcard operators

SELECT * FROM customer
WHERE last_name LIKE 'S%';

SELECT COUNT(*) FROM customer
WHERE last_name LIKE 'S%';

SELECT * FROM customer
WHERE last_name LIKE 'S%' AND first_name LIKE 'S%';

SELECT COUNT(*) FROM customer
WHERE last_name LIKE 'S%' AND first_name LIKE 'S%';

-- ILIKE operator is not case sensitive 

SELECT * FROM customer
WHERE first_name ILIKE '%o' AND last_name ILIKE 's%';

SELECT COUNT(*) FROM customer
WHERE first_name ILIKE '%o' AND last_name NOT ILIKE 's%';

-- we can use more than one wildcard operators in a query. Below is the example:

SELECT * FROM customer
WHERE first_name LIKE '%her%' AND last_name LIKE '%er%';

SELECT COUNT(*) FROM customer
WHERE first_name LIKE '%er%' AND last_name NOT LIKE '%er%';

-- Number of '_' (Underscore) represents the number of characters in the given query. Example:

SELECT * FROM customer
WHERE first_name LIKE '_er%' AND last_name LIKE '%r___';

SELECT * FROM customer
WHERE first_name LIKE 'S%'
ORDER BY email ASC;

SELECT * FROM customer
WHERE last_name LIKE '%e'
ORDER BY email DESC;

SELECT * FROM customer
WHERE last_name LIKE '%e' AND first_name NOT LIKE 'S%'
ORDER BY first_name ASC;

SELECT COUNT(*) FROM customer
WHERE last_name LIKE '%e' AND first_name NOT LIKE 'S%';