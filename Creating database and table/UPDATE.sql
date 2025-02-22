UPDATE account
SET last_login = CURRENT_TIMESTAMP;

SELECT * FROM account;

UPDATE account
SET last_login = created_on;

--Below query is also called UPDATE JOIN
UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id;

--In below query, RETURNING displays the columns we want
UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email,created_on,last_login;

CREATE TABLE depts(
first_name VARCHAR(50),
department VARCHAR(50)
);

INSERT INTO depts(
first_name,
department
)
VALUES
('Vinton','A'),
('Lauren','B'),
('Claire','C');

UPDATE depts
SET department = 'A' WHERE first_name = 'Lauren';