-- Subquery we ran below to show the replcement cost that is more than average

SELECT title,replacement_cost FROM film
WHERE replacement_cost> (SELECT AVG(replacement_cost) FROM film);

--In below query, we used two inner joins and a where subquery

SELECT inventory.film_id,rental.rental_id,title,return_date FROM RENTAL
INNER JOIN INVENTORY ON
rental.inventory_id = inventory.inventory_id
INNER JOIN film ON
inventory.film_id = film.film_id
WHERE rental_date BETWEEN '2005-05-29' AND '2005-05-30';

--Alternatively we can write below subquery. The bracketed query is subquery

SELECT FILM.film_id,title from FILM
WHERE film_id IN
(SELECT inventory.film_id FROM rental
INNER JOIN inventory ON 
inventory.inventory_id = rental.inventory_id
WHERE rentaL_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY film_id DESC;

-- BELOW QUERY WAS RUN TO GET THE FIRST AND LAST NAMES OF THE CUSTOMERS
-- WHO PAID MORE THAN $11 USING EXIST() OPERATOR

SELECT first_name,last_name
FROM customer
WHERE EXISTS
(SELECT * FROM payment
WHERE payment.customer_id = customer.customer_id
AND amount > 11);

-- BELOW QUERY GETS THE NAMES OF THE CUTOMERS WHO HAVE MADE PAYMENTS
-- LESS THAN $11

SELECT first_name,last_name
FROM customer
WHERE NOT EXISTS
(SELECT * FROM payment
WHERE payment.customer_id = customer.customer_id
AND amount > 11);

