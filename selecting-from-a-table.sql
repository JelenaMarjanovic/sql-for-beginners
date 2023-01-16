USE coffee_store;

-- Retrieve all the rows from a table
SELECT * FROM customers;

-- Retrieve one column from a table
SELECT last_name FROM customers;

-- Retrieve multiple columns from a table
SELECT last_name, phone_number FROM customers;


SELECT * FROM products;

-- Retrieve rows where some clause is fulfilled
SELECT * FROM products
WHERE coffee_origin = 'Colombia';

-- Retrieve rows where both clauses are fulfilled
SELECT * FROM products
WHERE price = 3.00
AND coffee_origin = 'Colombia';

-- Retrieve rows where at least one of the clauses is fulfilled
SELECT * FROM products
WHERE price = 3.00
OR coffee_origin = 'Colombia';


-- Using inequality symbols
/*
		>		- greater than
    >=	- greater than or equal to
    <		- less than
    <=	-	less than or equal to
*/
SELECT * FROM products
WHERE price > 3.00;
SELECT * FROM products
WHERE price <= 3.00;


SELECT * FROM customers;

-- Retrieve rows where some column value is (equal to) NULL
SELECT * FROM customers
WHERE phone_number IS NULL;

-- Retrieve rows where some column value is not (equal to) NULL
SELECT * FROM customers
WHERE phone_number IS NOT NULL;

-- Retrieve rows where a column can be equal to two or more values
SELECT * FROM customers
WHERE last_name IN ('Taylor', 'Bluth', 'Armstrong');

-- Exclude multiple values from our results
SELECT * FROM customers
WHERE first_name NOT IN ('Katie', 'John', 'George');

-- Retrieve rows where certain data is between 2 values
SELECT * FROM orders;
SELECT * FROM customers;

SELECT product_id, customer_id, order_time FROM orders
WHERE order_time BETWEEN '2017-01-01' AND '2017-01-07';

SELECT product_id, customer_id, order_time FROM orders
WHERE customer_id BETWEEN 5 AND 10;

SELECT * FROM customers
WHERE last_name BETWEEN 'A' AND 'L';

-- Pattern matching
/*
		% - any number of characters
		_- just one character
*/
SELECT * FROM customers
WHERE last_name LIKE 'W%';

SELECT * FROM customers
WHERE last_name LIKE '%o%';

SELECT * FROM customers
WHERE first_name LIKE '_o_';

SELECT * FROM products
WHERE price LIKE '3%';

-- Ordering data
SELECT * FROM products
ORDER BY price ASC;

SELECT * FROM products
ORDER BY price DESC;

SELECT * FROM customers
ORDER BY last_name ASC;

SELECT * FROM customers
ORDER BY last_name DESC;

SELECT * FROM orders
WHERE customer_id = 1
ORDER BY order_time ASC;

SELECT * FROM orders
WHERE customer_id = 1
ORDER BY order_time DESC;