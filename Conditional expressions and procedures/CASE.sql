-- General case statement:

SELECT customer_id,  --Here comma is important part of syntax
CASE
	WHEN (customer_id <= 100) THEN 'Premium'
	WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
	ELSE 'Normal'
END AS customer_class   --Here customer_class is an alias
FROM customer;


--CASE expression statement

SELECT customer_id,
CASE customer_id	
	WHEN 4 THEN 'Winner'
	WHEN 47 THEN 'Second place'
	ELSE 'Normal'
END AS contest_result
FROM customer;

SELECT COUNT(rental_rate),
CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END 
FROM film
GROUP BY rental_rate;

SELECT
SUM(CASE rental_rate
		WHEN 0.99 THEN 1
		ELSE 0
END) AS number_of_99_cents
FROM film;



--Using multiple case statements in a single query

SELECT
SUM(CASE rental_rate
		WHEN 0.99 THEN 1
		ELSE 0
END) AS bargains,
SUM(CASE rental_rate
		WHEN 2.99 THEN 1
		ELSE 0
END) AS regular,
SUM(CASE rental_rate
		WHEN 4.99 THEN 1
		ELSE 0
END) AS Premium
FROM film;


-- CASE Challenge task
SELECT
SUM(CASE rating
		WHEN 'R' THEN 1
	ELSE 0
END) AS R_rating,
SUM(CASE rating
		WHEN 'PG' THEN 1
	ELSE 0
END) as PG_rating,
SUM(CASE rating
		WHEN 'PG-13' THEN 1
	ELSE 0
END) AS PG13_rating
FROM film;
