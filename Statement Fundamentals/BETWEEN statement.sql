SELECT * FROM payment
WHERE amount BETWEEN 7.00 AND 9.01;

SELECT COUNT(*) FROM payment
WHERE amount NOT BETWEEN 7.00 AND 9.01;

SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';

--(The date format YYYY-MM-DD is called ISO 8601)

SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-14'; -- (This query does not return any results
--is because when there's a timestamp is data, BETWEEN considers time from 00.00 hours and not 
-- till 24.00 hours)