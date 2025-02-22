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

SELECT * FROM depts;

SELECT(
SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END)/
SUM(CASE WHEN department = 'C' THEN 1 ELSE 0 END)
) AS department_ratio
FROM depts;

DELETE FROM depts
WHERE department = 'C';


SELECT(
SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END)/
NULLIF(SUM(CASE WHEN department = 'C' THEN 1 ELSE 0 END),0)
) AS department_ratio
FROM depts;