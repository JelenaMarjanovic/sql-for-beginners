USE coffee_store;

-- Select the order id and customers phone number for all orders
-- of product id 4.
SELECT o.id, c.phone_number FROM orders o
JOIN customers c ON c.id = o.customer_id
WHERE o.product_id = 4;

-- Select product name and order time for filter coffees sold
-- between January 15th 2017 and February 14th 2017.
SELECT p.name, o.order_time FROM orders o
JOIN products p ON p.id = o.product_id
WHERE p.name = 'Filter'
AND o.order_time BETWEEN '2017-01-15' AND '2017-02-14';

-- Select the product name and price and order time for all orders
-- from females in January 2017.
SELECT p.name, p.price, o.order_time FROM orders o
JOIN products p ON p.id = o.product_id
JOIN customers c ON c.id = o.customer_id
WHERE c.gender = 'F'
AND o.order_time LIKE '2017-01%';