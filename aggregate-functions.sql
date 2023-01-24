USE cinema_booking_system;

SELECT * FROM customers;

-- Count the number of customers
SELECT COUNT(*) FROM customers;

-- Count on a column
SELECT COUNT(last_name) FROM customers;
SELECT COUNT(first_name) FROM customers; # not counting NULL values

-- Count using WHERE clause
SELECT COUNT(*) FROM customers
WHERE last_name = 'Smith';
SELECT COUNT(*) FROM customers
WHERE first_name IS NULL;