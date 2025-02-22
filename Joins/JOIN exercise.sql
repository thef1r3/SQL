SELECT first_name,last_name,email,address.phone,address.district FROM customer
FULL OUTER JOIN address ON
customer.address_id = address.address_id
WHERE address.district = 'California';

-- OR

SELECT district,email FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'California';

-- joining multiple tables with inner join
SELECT title,first_name,last_name FROM film_actor
INNER JOIN actor
ON film_actor.actor_id = actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
WHERE first_name = 'Nick'
AND
last_name = 'Wahlberg';