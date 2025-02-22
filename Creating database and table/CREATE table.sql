--Creating table and joining them with each other

CREATE TABLE account (
user_id SERIAL PRIMARY KEY,
username VARCHAR(50) UNIQUE NOT NULL,
user_pwd VARCHAR(100) NOT NULL,
email VARCHAR(50) UNIQUE NOT NULL,
created_on TIMESTAMP NOT NULL,
last_login TIMESTAMP
);

CREATE TABLE Job(
job_id SERIAL PRIMARY KEY,
job_title VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE account_job(
user_id INTEGER REFERENCES account(user_id),
job_id INTEGER REFERENCES job(job_id),
hire_date TIMESTAMP
)