CREATE DATABASE test;

USE test;

CREATE TABLE addresses(
		id INT,
    house_number INT,
    city VARCHAR(20),
    postcode VARCHAR(7)
);

CREATE TABLE people(
		id INT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    address_id INT
);

CREATE TABLE pets(
		id INT,
    name VARCHAR(20),
    species VARCHAR(20),
    owner_id INT
);

SHOW TABLES;

-- Add and remove primary key
DESCRIBE addresses;
DESCRIBE people;
DESCRIBE pets;

-- Add primary key to a table
ALTER TABLE addresses
ADD PRIMARY KEY (id);

ALTER TABLE people
ADD PRIMARY KEY (id);

ALTER TABLE pets
ADD PRIMARY KEY (id);

-- Remove primary key from a table
ALTER TABLE addresses
DROP PRIMARY KEY;

-- Add and remove foreign key
DESCRIBE addresses;
DESCRIBE people;
DESCRIBE pets;

-- Add a foreign key to a table
ALTER TABLE people
ADD CONSTRAINT FK_PeopleAddress
FOREIGN KEY (address_id) REFERENCES addresses(id);

ALTER TABLE pets
ADD CONSTRAINT FK_PetsOwner
FOREIGN KEY (owner_id) REFERENCES people(id);

-- Remove a foreign key from a table
ALTER TABLE people
DROP FOREIGN KEY FK_PeopleAddress;