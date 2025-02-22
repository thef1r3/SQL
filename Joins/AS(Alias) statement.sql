SELECT COUNT(amount) AS num_transactions FROM payment;

SELECT customer_id,SUM(amount) AS total_spent FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

-- in above query in line 5, we cannot use alias as total_spent because the alias is executed at
-- the end of the query. Hence we used SUM(amount) after HAVING clause.

-- Same is the case with WHERE CLAUSE. The example is given below;

SELECT customer_id,amount AS new_name FROM payment
WHERE amount > 2.99;
