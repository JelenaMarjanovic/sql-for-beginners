USE test;

CREATE TABLE people (
		id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    age INT,
    gender ENUM('F', 'M')
);

SELECT * FROM people;

INSERT INTO people (name, age, gender)
VALUES ('Emma', 21, 'F'),
		   ('John', 30, 'M'),
       ('Thomas', 27, 'M'),
       ('Chris', 44, 'M'),
       ('Sally', 23, 'F'),
       ('Frank', 55, 'M');

-- Deleting single row from table
DELETE FROM people
WHERE name = 'John';

SELECT * FROM people;

-- Deleting multiple rows from table
DELETE FROM people
WHERE gender = 'F';

SELECT * FROM people;

-- Deleting all the data from table
DELETE FROM people;

SELECT * FROM people;