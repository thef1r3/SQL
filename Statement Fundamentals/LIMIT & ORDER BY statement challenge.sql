SELECT * FROM payment
LIMIT 1;                    --(This query is generally used to get an idea about a table.)

SELECT * FROM customer
WHERE address_id <> 9
ORDER BY store_id ASC,first_name ASC, last_name DESC
LIMIT 100;

SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;

SELECT title,length FROM film
ORDER BY length ASC
LIMIT 5;

SELECT COUNT(length) from film
WHERE length <= 50;