USE coffee_store;

-- Inner join
SELECT * FROM products;
SELECT * FROM orders;

SELECT products.name, orders.order_time FROM orders
INNER JOIN products ON orders.product_id = products.id;

-- Shorthand version
SELECT p.name, o.order_time FROM orders o
JOIN products p ON o.product_id = p.id;

SELECT p.name, p.price, o.order_time FROM orders o
JOIN products p ON o.product_id = p.id
WHERE o.product_id = 5
ORDER BY o.order_time;


-- Left join

-- Fix for the optional
UPDATE orders
SET customer_id = 1
WHERE id = 1;

SELECT * FROM customers;
SELECT * FROM orders;

-- Optional, what happens when there's no matching id
UPDATE orders
SET customer_id = NULL
WHERE id = 1;

SELECT o.id, c.phone_number, c.last_name, o.order_time FROM orders o
LEFT JOIN customers c ON o.customer_id = c.id
ORDER BY o.order_time
LIMIT 10;

-- Showing importance of the order of table 1 and 2
SELECT o.id, c.phone_number, c.last_name, o.order_time FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
ORDER BY o.order_time
LIMIT 10;


-- Right join
SELECT o.id, c.phone_number, c.last_name, o.order_time FROM customers c
RIGHT JOIN orders o ON c.id = o.customer_id
ORDER BY o.order_time
LIMIT 10;

-- Showing importance of the order of table 1 and 2
SELECT o.id, c.phone_number, c.last_name, o.order_time FROM orders o
RIGHT JOIN customers c ON o.customer_id = c.id
ORDER BY o.order_time
LIMIT 10;