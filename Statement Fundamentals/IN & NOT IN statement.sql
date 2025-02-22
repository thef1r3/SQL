SELECT * FROM customer
WHERE address_id IN (10,52,59);

SELECT COUNT(*) FROM customer
WHERE address_id IN (10,14);

SELECT * FROM customer
WHERE address_id NOT IN (10,25,29);

SELECT COUNT(*) FROM customer
WHERE address_id NOT IN (10,25,29);

SELECT * FROM customer
WHERE first_name IN ('Jennifer','Maria','Peter');