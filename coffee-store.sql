SHOW DATABASES;

-- Create Coffee Store Database
CREATE DATABASE coffee_store;

USE coffee_store;

CREATE TABLE products(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    price DECIMAL(3,2)
);

CREATE TABLE customers(
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    gender ENUM('F','M'),
    phone_number VARCHAR(11)
);

CREATE TABLE orders(
	id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    order_time DATETIME,
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

SHOW TABLES;

-- Modifying Tables: Adding and Removing Columns
SELECT * FROM products;

ALTER TABLE products
ADD COLUMN coffee_origin VARCHAR(30);

ALTER TABLE products
DROP COLUMN coffee_origin;

-- Deleting Tables
CREATE DATABASE example;

USE example;

CREATE TABLE test(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    age INT
);

SELECT * FROM test;
SHOW TABLES;

DROP TABLE test;

SELECT * FROM test;
SHOW TABLES;

-- Truncating Tables
CREATE TABLE test(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    age INT
);

SELECT * FROM test;

INSERT INTO test (name, age)
VALUES ('Ben', 19), ('Simon', 28), ('Claire', 23);

SELECT * FROM test;

TRUNCATE TABLE test;

SELECT * FROM test;