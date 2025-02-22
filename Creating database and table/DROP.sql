--Below query is used to remove the column if we are usure if the column we are to remove
--exists in the given table or not and to avoid error:

ALTER TABLE new_info
DROP COLUMN IF EXISTS people;

-- If a column are usd in views, tiggers or stored then we cannot remove them
-- That's when we use CASCADE and is demonstrated below:

--ALTER TABLE table_name
--DROP COLUMN column_name CASCADE;

--Note that CASCADE removed all the dependencies of the column



-- Below is the syantax to DROP multiple columns:

-- ALTER TABLE table_name
-- DROP COLUMN column_one,
-- DROP COLUMN column_two
