SELECT * FROM customer
WHERE first_name = 'Barbara';

SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating= 'R';

SELECT title FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R';

SELECT COUNT(title) FROM film     --(We can use any columm name or * to return the value of COUNT)
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R';

SELECT COUNT(*) FROM film
WHERE rating = 'R' or rating = 'PG-13';

SELECT * FROM film
WHERE rating != 'R';

SELECT email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

SELECT description FROM film
WHERE title = 'Outlaw Hanky';

SELECT phone FROM address
WHERE address = '259 Ipoh Drive';