CREATE DATABASE smoothies_db;

USE smoothies_db;


CREATE TABLE smoothies
(
    name        VARCHAR(50),
    price       DECIMAL(5, 2),
    ingredients VARCHAR(255),
    id          INT AUTO_INCREMENT PRIMARY KEY
);

SELECT *
FROM smoothies;

INSERT INTO smoothies (name, price, ingredients)
VALUES ('Blubs & Vanilla', 5.99, 'strawberries, blueberry, vanilla proteins, soy milk');

INSERT INTO smoothies (name, price, ingredients)
VALUES ('Mango Tango', 6.99, 'mango, pineapple, banana, orange juice'),
       ('Berry Blast', 7.99, 'strawberries, blueberries, raspberries, apple juice'),
       ('Green Dream', 8.99, 'spinach, kale, banana, apple juice, chia seeds'),
       ('Peanut Butter Power', 9.99, 'peanut butter, banana, chocolate proteins, almond milk');


SELECT id, name, price
FROM smoothies;

DELETE
FROM smoothies
WHERE id;

UPDATE smoothies
SET name        = 'Blubs & Vanilla',
    ingredients = 'strawberries, blueberry, vanilla proteins, soy milk'
WHERE id;



CREATE TABLE countries(
                          id          INT AUTO_INCREMENT PRIMARY KEY,
                          name        VARCHAR(50) NOT NULL,
                          continent   VARCHAR(50) NOT NULL,
                          phone_code     VARCHAR(8) UNIQUE
);

CREATE TABLE coffee(
                       id  INT AUTO_INCREMENT PRIMARY KEY,
                       name    VARCHAR(50) NOT NULL,
                       quality VARCHAR(50) NOT NULL,
                       origin  INT,
                       FOREIGN KEY (origin) REFERENCES countries(id)
);


# please insert some countries famous for coffee production
INSERT INTO countries (name, continent, phone_code)
VALUES ('Brazil', 'South America', '+55'),
       ('Vietnam', 'Asia', '+84'),
       ('Colombia', 'South America', '+57'),
       ('Ethiopia', 'Africa', '+251'),
       ('Honduras', 'North America', '+504'),
       ('India', 'Asia', '+91'),
       ('Uganda', 'Africa', '+256'),
       ('Mexico', 'North America', '+52'),
       ('Peru', 'South America', '+51'),
       ('Guatemala', 'North America', '+502');


# please insert some coffee types in line with the countries and with funny names for a developer and coffee enthusiast
INSERT INTO coffee (name, quality, origin)
VALUES ('Java Junkie', 'High', 1),
       ('Cappuccino Coder', 'Medium', 2),
       ('Latte Lover', 'High', 3),
       ('Espresso Enthusiast', 'Low', 4),
       ('Mocha Maniac', 'Medium', 5),
       ('Americano Fun', 'High', 6);


DELETE FROM countries
WHERE id = 2;

DELETE FROM coffee
WHERE id = 2;

ALTER TABLE countries ADD COLUMN population INT;

DROP TABLE coffee;
DROP TABLE countries;

DROP DATABASE smoothies_db;