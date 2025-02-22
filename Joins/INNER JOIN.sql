SELECT * FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

SELECT payment_id,customer.customer_id,first_name,last_name
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

-- in above case we used customer.customer_id because the column customer_id is present in
-- both tables, payment and customer. 
-- rest of the column names, payment_id, first_name and last_name are unique to each table.

