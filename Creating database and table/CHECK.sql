CREATE TABLE employees(
emp_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
DOB DATE CHECK (DOB > '1900-01-01'),
DOJ DATE CHECK (DOJ > DOB),
salary INTEGER CHECK (salary > 0)
);

INSERT INTO employees(
first_name,
last_name,
DOB,
DOJ,
salary
)
VALUES
('Sam',
'Martin',
'1991-02-24',
'2017-03-26',
15000)

INSERT INTO employees(
first_name,
last_name,
DOB,
DOJ,
salary
)
VALUES
('Raul',
'Ramirez',
'1994-05-13',
'2020-12-05',
11500
)

SELECT * FROM employees;