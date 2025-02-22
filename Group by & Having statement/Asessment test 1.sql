SELECT customer_id,staff_id,SUM(amount) FROM payment
GROUP BY customer_id,staff_id
HAVING SUM(amount) >= 110 AND staff_id = 2;

SELECT COUNT(title) FROM FILM
WHERE title ILIKE 'j%';

select * from customer;


SELECT first_name,last_name,customer_id FROM customer
WHERE first_name LIKE 'E%' AND address_id < 500
GROUP BY first_name,last_name,customer_id
ORDER BY customer_id DESC
LIMIT 1;

--SOLUTIONS AS PER MODULE ARE GIVEN BELOW:

SELECT customer_id,SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 110;

SELECT COUNT(*) FROM film
WHERE title LIKE 'J%';

SELECT first_name,last_name FROM customer
WHERE first_name LIKE 'E%'
AND address_id <500
ORDER BY customer_id DESC
LIMIT 1;



