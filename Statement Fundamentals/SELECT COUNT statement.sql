SELECT * FROM customer;

--COUNT query returns the number of rows. The name of the column should be in parenthesis '()'
--whose number of rows we want to determine

SELECT COUNT(email) FROM CUSTOMER;
--or
SELECT COUNT(*) FROM customer;  --(both sytanxes are right)

SELECT * FROM customer;

--below query is used to find the number of rows that have unique values in a given column:

SELECT COUNT(DISTINCT first_name) from customer;

SELECT * FROM customer;

SELECT COUNT(DISTINCT(store_id)) from customer; --(This is also a correct syntax)
