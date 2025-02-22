INSERT INTO account(username,user_pwd,email,created_on)
VALUES
('ABC1','Password@1','ABC1@mail.com',CURRENT_TIMESTAMP);

--Note that we did not insert any values in column 'user_id' because its datatype is SERIAL
--and it keeps on adding numbers in sequence so no need to INSERT any value.

SELECT * FROM account

INSERT INTO job(job_title)
VALUES
('Goldsmith');

--Note that we did not insert any values in column 'job_id' because its datatype is SERIAL
--and it keeps on adding numbers in sequence so no need to INSERT any value.

INSERT INTO job(job_title)
VALUES
('President');

INSERT INTO account_job(user_id,job_id,hire_date)
VALUES
(1,1,CURRENT_TIMESTAMP)