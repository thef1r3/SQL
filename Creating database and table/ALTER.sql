CREATE TABLE information(
info_id SERIAL PRIMARY KEY,
title VARCHAR(500) NOT NULL,
Person VARCHAR(100) NOT NULL UNIQUE
)

SELECT * FROM information;

ALTER TABLE information
RENAME TO new_info;

SELECT * FROM new_info;

ALTER TABLE new_info
RENAME COLUMN person TO people;

SELECT * FROM new_info;

INSERT INTO new_info(title)
VALUES
('The new title goes here');

-- Above query gave below error because we had set 'NOT NULL' constrain to the column 'People.'

--ERROR:  Failing row contains (1, The new title goes here, null).null value
--in column "people" of relation "new_info" violates not-null constraint 

--ERROR:  null value in column "people" of relation "new_info" violates not-null constraint
--SQL state: 23502
--Detail: Failing row contains (1, The new title goes here, null).



-- Below query is used to remove the constrain given to the column.

ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL;

-- Below query is used to add the constrain given to the column.

ALTER TABLE new_info
ALTER COLUMN people SET NOT NULL;

INSERT INTO new_info(title)
VALUES
('The new title goes here');