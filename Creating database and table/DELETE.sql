INSERT INTO job(job_title)
VALUES
('Engineer');

DELETE FROM job
where job_title = 'Engineer'
RETURNING job_id,job_title;

-- Below syntax is used to delete rows based on their presence in 
-- other columns

-- DELETE FROM TableA
-- USING TableB
-- WHERE TableA.id = TableB.id


-- Below syntax is used to delete all rows from the table
-- DELETE FROM table