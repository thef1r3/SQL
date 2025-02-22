 -- LEFT OUTER JOIN

SELECT film.film_id,title,inventory_id FROM film
LEFT OUTER JOIN inventory 
ON film.film_id = inventory.film_id;

-- we can also write LEFT JOIN INSTEAD OF LEFT OUTER JOIN in PostgreSQL

-- LEFT OUTER JOIN with WHERE cause is given below:

SELECT film.film_id,title,inventory_id,store_id FROM film
LEFT OUTER JOIN inventory
ON film.film_id = inventory.film_id
WHERE inventory.film_id IS NULL;

  -- RIGHT OUTER JOIN

SELECT film.film_id,title,inventory_id FROM film
RIGHT OUTER JOIN inventory 
ON film.film_id = inventory.film_id;

-- we can also write RIGHT JOIN INSTEAD OF RIGHT OUTER JOIN in PostgreSQL

-- RIGHT OUTER JOIN with WHERE cause is given below:

SELECT film.film_id,title,inventory_id,store_id FROM film
RIGHT OUTER JOIN inventory
ON film.film_id = inventory.film_id
WHERE film.film_id IS NULL;