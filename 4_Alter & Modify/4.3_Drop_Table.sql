ALTER TABLE project_list
DROP COLUMN start_date;

-- Once you’ve dropped a column, everything that was stored in it is removed too!

DESC project_list;