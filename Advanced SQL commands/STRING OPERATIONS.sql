--To calculate String lenght
SELECT LENGTH(first_name) FROM customer;

--String concatenation
SELECT first_name || ' ' || last_name AS full_name FROM customer;

SELECT UPPER(first_name) || ' ' || UPPER(last_name) AS full_name FROM customer;

--How to create an email ID
SELECT LOWER(first_name) || LOWER(last_name) || '@gmail.com' AS new_email FROM customer;

-- OR if we want to create the email ids with only 1st letter of first_name then use below query
SELECT LOWER(LEFT(first_name,1)) || LOWER(last_name) || '@gmail.com' AS another_email 
FROM customer;

