CREATE TABLE students (
student_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
homeroom_number INTEGER,
phone VARCHAR(25) UNIQUE NOT NULL,
email VARCHAR(50) UNIQUE NOT NULL,
graduation_year SMALLINT 
);

INSERT INTO students(
first_name,
last_name,
homeroom_number,
phone,
email,
graduation_year)
VALUES(
'Mark',
'Watney',
5,
'777-555-1234',
'markwatney@mail.com',
2035
);

SELECT * FROM students;

CREATE TABLE teachers(
teacher_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
homeroom_number INTEGER,
department VARCHAR(30),
phone VARCHAR(20),
email VARCHAR(50)
);

INSERT INTO teachers(
first_name,
last_name,
homeroom_number,
department,
phone,
email
)
VALUES(
'Jonas',
'Salk',
5,
'Biology',
'777-555-4321',
'jsalk@shool.org'
)

SELECT * FROM teachers;

ALTER TABLE students
ALTER COLUMN email DROP NOT NULL;

ALTER TABLE teachers
ALTER COLUMN first_name SET NOT NULL;

ALTER TABLE teachers
ALTER COLUMN last_name SET NOT NULL;

-- Keyword UNIQUE cannot be altered