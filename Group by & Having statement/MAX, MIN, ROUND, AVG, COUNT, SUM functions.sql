SELECT MAX(length),MIN(rental_rate),ROUND(AVG(replacement_cost),2) FROM FILM;

SELECT ROUND(AVG(length),4) FROM film;

SELECT COUNT(rental_rate) FROM film;

SELECT SUM(length) FROM film;

SELECT SUM(rental_rate) FROM film;