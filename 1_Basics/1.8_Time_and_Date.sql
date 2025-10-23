CREATE TABLE time_info
(
	my_time TIME,
    my_date DATE,
    my_date_time DATETIME
    
);

INSERT INTO time_info
VALUES(CURRENT_TIME(),CURRENT_DATE(),NOW());

INSERT INTO time_info (my_time,my_date)
VALUES(CURRENT_TIME()+1,CURRENT_DATE()+1);

SELECT*FROM time_info;

SELECT CURRENT_TIMESTAMP();