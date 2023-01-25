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


SELECT * FROM rooms;

-- Sum the number of seats
SELECT SUM(no_seats) FROM rooms;

-- Sum using WHERE clause
SELECT SUM(no_seats) FROM rooms
WHERE id > 1;


SELECT * FROM films;

-- Max length - the longest film that we're showing in our cinema
SELECT MAX(length_min) FROM films;

-- Min length - the shortest film that we're showing in our cinema
SELECT MIN(length_min) FROM films;


-- Average length of all the films that we're showing
SELECT AVG(length_min) FROM films;

-- Avg using WHERE clause
SELECT AVG(length_min) FROM films
WHERE length_min > 120;