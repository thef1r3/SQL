SELECT COUNT(amount) FROM PAYMENT
WHERE amount > 5.00;

SELECT COUNT(first_name) FROM actor
WHERE first_name ILIKE 'p%';

SELECT COUNT(DISTINCT(district)) FROM address;

SELECT DISTINCT(district) FROM address;

SELECT COUNT(rating) FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5.00 AND 15.00;

SELECT COUNT(title) FROM film
WHERE title LIKE '%Truman%';

SELECT COUNT(title) FROM film
WHERE title ILIKE '%truman%';