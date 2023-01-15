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