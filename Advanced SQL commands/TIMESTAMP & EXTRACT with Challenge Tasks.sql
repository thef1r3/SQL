--PART 1

SHOW TIMEZONE;   -- shows timezone we are in

SELECT NOW();    -- This is used to get current timestamp

SELECT TIMEOFDAY();  -- This gives the same information as SELECT NOW() but in string format

SELECT CURRENT_TIME; -- This gives only time and timezone

SELECT CURRENT_DATE; -- This gives only current date


--PART 2

SELECT EXTRACT(YEAR FROM payment_date) AS myyear
FROM payment;

SELECT EXTRACT(MONTH FROM payment_date) AS pay_month
FROM payment;

SELECT EXTRACT(QUARTER FROM payment_date) AS pay_quarter
FROM payment;

SELECT AGE(payment_date)
FROM payment;

SELECT TO_CHAR(payment_date,'YYYY-MM-DD')
FROM payment;

SELECT TO_CHAR(payment_date,'DATE-MONTH-YEAR')
FROM payment;

SELECT TO_CHAR(payment_date,'DD-MONTH-YYYY')
FROM payment;


--CHALLENGE TASK

SELECT DISTINCT(TO_CHAR(payment_date,'MONTH')) FROM payment;

SELECT COUNT(*) FROM payment
WHERE EXTRACT(DOW FROM payment_date) = 1