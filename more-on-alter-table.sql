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

-- Add a unique constraint to a column
ALTER TABLE pets
ADD CONSTRAINT u_species UNIQUE (species);

-- Remove a unique constraint from a column
ALTER TABLE pets
DROP INDEX u_species;

-- Change column name
ALTER TABLE pets CHANGE `species` `animal_type` VARCHAR(20);
ALTER TABLE pets CHANGE `animal_type` `species` VARCHAR(20);
DESCRIBE pets;

-- Change column data type
ALTER TABLE addresses MODIFY city VARCHAR(30);
ALTER TABLE addresses MODIFY city CHAR(25);
ALTER TABLE addresses MODIFY city INT;
ALTER TABLE addresses MODIFY city VARCHAR(20);
DESCRIBE addresses;