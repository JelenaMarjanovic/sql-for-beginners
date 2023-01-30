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