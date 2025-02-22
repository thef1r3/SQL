SELECT customer_id,SUM(amount) FROM payment
WHERE customer_id NOT IN (55,477)
GROUP BY customer_id;

SELECT customer_id,SUM(amount) FROM payment
WHERE customer_id != 184 AND customer_id != 87
GROUP BY customer_id;

SELECT customer_id,SUM(amount) FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

SELECT store_id,COUNT(*) FROM customer
GROUP BY store_id
HAVING COUNT(*) > 300;

select customer_id,SUM(amount) from payment
GROUP BY customer_id
HAVING SUM(amount) < 100;

SELECT customer_id,COUNT(amount) FROM payment
GROUP BY customer_id
HAVING COUNT(amount) >= 40;

SELECT customer_id,staff_id,SUM(amount) FROM payment
GROUP BY customer_id,staff_id
HAVING SUM(amount) > 100 AND staff_id = 2;  

-- ALTERNATIVELY WE CAN USE BELOW QUERY

SELECT customer_id,staff_id,SUM(amount) from payment
WHERE staff_id = 2
GROUP BY customer_id,staff_id
HAVING SUM(amount) > 100;