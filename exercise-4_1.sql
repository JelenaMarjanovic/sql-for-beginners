USE example;

-- 1. Add a primary key to the id in the pets and people tables.
ALTER TABLE pets
ADD PRIMARY KEY (id);

DESCRIBE pets;

ALTER TABLE people
ADD PRIMARY KEY (id);

DESCRIBE people;

-- 2. Add a foreign key to the owner_id field in the pets table referencing the id field in the people table.
ALTER TABLE pets
ADD CONSTRAINT FK_PetsOwner
FOREIGN KEY (owner_id) REFERENCES people(id);

DESCRIBE pets;

-- 3. Add a column named email to the peope table.
ALTER TABLE people
ADD COLUMN email VARCHAR(20);

DESCRIBE people;

-- 4. Add a unique constraint to the email column in the people table.
ALTER TABLE people
ADD CONSTRAINT u_email UNIQUE (email);

DESCRIBE people;

-- 5. Rename the name column in the pets table to 'first_name'.ALTER
ALTER TABLE pets CHANGE `name` `first_name` VARCHAR(20);

DESCRIBE pets;

-- 6. Change the postcode data type to CHAR(7) in the addresses table.
ALTER TABLE addresses MODIFY postcode CHAR(7);

DESCRIBE addresses;