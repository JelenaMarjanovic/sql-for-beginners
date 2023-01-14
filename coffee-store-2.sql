USE coffee_store;

SELECT * from products;

-- Inserting Data Into Tables

INSERT INTO products (name, price, coffee_origin)
VALUES ('Espresso', 2.50, 'Brazil');

INSERT INTO products (name, price, coffee_origin)
VALUES ('Macchiato', 3.00, 'Brazil'),
		   ('Cappuccino', 3.50, 'Costa Rica');

INSERT INTO products (name, price, coffee_origin)
VALUES ('Latte', 3.50, 'Indonesia'),
		   ('Americano', 3.00, 'Brazil'),
       ('Flat White', 3.50, 'Indonesia'),
       ('Filter', 3.00, 'India');
       
-- Updating Data in Tables
UPDATE products
SET coffee_origin = 'Sri Lanka'
WHERE id = 7;

-- Deactivating safe updates
SET SQL_SAFE_UPDATES = 0;

-- Updating two columns in one statement
UPDATE products
SET price = 3.25, coffee_origin = 'Ethiopia'
WHERE name = 'Americano';

-- Updating two rows in one statement
UPDATE products
SET coffee_origin = 'Colombia'
WHERE coffee_origin = 'Brazil';