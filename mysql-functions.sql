USE cinema_booking_system;

-- STRING FUNCTIONS

-- Concatenate
SELECT CONCAT(first_name, last_name) AS full_name FROM customers;
SELECT CONCAT(first_name, " ", last_name) AS full_name FROM customers;
SELECT CONCAT(first_name, " ", last_name, " ", email) AS customers_email FROM customers;
SELECT CONCAT("This is ", first_name, " ", last_name, "'s email: ", email) AS customers_email FROM customers;

-- Substrings
SELECT SUBSTRING("Example", 3, 3) AS Sub;
SELECT SUBSTRING("Example", 3) AS Sub;
SELECT SUBSTRING("Example", -2, 2) AS Sub;

SELECT SUBSTRING(name, 1, 3) AS short_name FROM films;
SELECT SUBSTRING(name, 5, 4) AS short_name FROM films;
SELECT SUBSTRING(name, -2, 2) AS short_name FROM films;
SELECT SUBSTRING(name, -6, 5) AS short_name FROM films;

-- Upper and lower case
SELECT name FROM rooms;

SELECT UPPER(name) AS uppercase_name FROM rooms;
SELECT LOWER(name) AS lowercase_name FROM rooms;


-- DATE FUNCTIONS

-- 	Date function
SELECT DATE('2018-06-05');
SELECT DATE('2018-06-05 07:45:32');

SELECT DATE(start_time) AS date FROM screenings;

SELECT * FROM screenings
WHERE DATE(start_time) = '2017-10-03';
SELECT * FROM screenings
WHERE DATE(start_time) BETWEEN '2017-10-03' AND '2017-10-05';

-- Month function
SELECT MONTH('2018-06-05');
SELECT MONTH('2018-06-05 07:45:32');

SELECT MONTH(start_time) AS month FROM screenings;

SELECT * FROM screenings
WHERE MONTH(start_time) = '10';