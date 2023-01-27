USE cinema_booking_system;

-- STRING FUNCTIONS

-- Concatenate
SELECT CONCAT(first_name, last_name) AS full_name FROM customers;
SELECT CONCAT(first_name, " ", last_name) AS full_name FROM customers;
SELECT CONCAT(first_name, " ", last_name, " ", email) AS customers_email FROM customers;
SELECT CONCAT("This is ", first_name, " ", last_name, "'s email: ", email) AS customers_email FROM customers;