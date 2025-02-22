SELECT * FROM actor;

SELECT actor_id,first_name,last_name from actor
ORDER BY actor_id ASC;   --(If we don't use ASC to sort in ascending order then too
                         --it will sort in asceding order by default)


SELECT * FROM customer;

SELECT first_name,last_name,email FROM customer
ORDER BY store_id ASC,first_name DESC;          --(Here the query is right but it is always
												 --a good practice to put store_id in select query
												 --because we're ordering by it.)

SELECT store_id,first_name,last_name,email FROM customer
ORDER BY store_id ASC, first_name ASC, last_name ASC;