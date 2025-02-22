-- FULL OUTER JOIN SYNTAX
SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id;

-- FULL OUTER JOIN With WHERE clause

SELECT * FROM payment
FULL OUTER JOIN customer
ON payment.customer_id = customer.customer_id
WHERE payment.payment_id IS null or customer.customer_id IS null;