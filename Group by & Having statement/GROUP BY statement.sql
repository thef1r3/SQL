SELECT * FROM payment;

SELECT customer_id FROM payment
GROUP BY customer_id
ORDER BY customer_id ASC;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
ORDER BY COUNT(customer_id) DESC;

SELECT customer_id,staff_id,SUM(amount) FROM payment
GROUP BY customer_id,staff_id
ORDER BY customer_id;

SELECT customer_id,staff_id,SUM(amount) FROM payment
GROUP BY customer_id,staff_id
ORDER BY customer_id,staff_id;

SELECT DATE(payment_date),SUM(amount) FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC;

-- Query DATE(payment_date) is used to convert timestamp into proper date

SELECT staff_id,COUNT(amount) FROM payment
GROUP BY staff_id
ORDER BY COUNT(amount);

SELECT rating,ROUND(AVG(replacement_cost),4) FROM film
GROUP BY rating
ORDER BY AVG(replacement_cost);

SELECT customer_id,SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;