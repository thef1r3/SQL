CREATE VIEW customer_info AS
SELECT first_name,last_name,address FROM customer
INNER JOIN address
ON 	customer.address_id = address.address_id;

SELECT * FROM customer_info;

--To update the VIEW

CREATE OR REPLACE VIEW customer_info AS
SELECT first_name,last_name,address,district FROM customer
INNER JOIN address
ON 	customer.address_id = address.address_id;

SELECT * FROM customer_info;

--To delete the VIEW

DROP VIEW IF EXISTS customer_info; 

SELECT * FROM customer_info;

-- To change the name of the VIEW:
ALTER VIEW customer_info RENAME TO c_info;

SELECT * FROM c_info;

DROP VIEW c_info;