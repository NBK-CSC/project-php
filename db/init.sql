CREATE DATABASE IF NOT EXISTS appDB;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
GRANT SELECT,UPDATE,INSERT ON appDB.* TO 'user'@'%';
FLUSH PRIVILEGES;

USE appDB;
CREATE TABLE IF NOT EXISTS users (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  login VARCHAR(20) NOT NULL,
  password VARCHAR(40) NOT NULL,
  PRIMARY KEY (ID)
);
CREATE TABLE IF NOT EXISTS products (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  price INTEGER,
  PRIMARY KEY (ID)
);

INSERT INTO users (login, password)
SELECT * FROM (SELECT 'nick', '{SHA}QL0AFWMIX8NRZTKeof9cXsvbvu8=') AS tmp
WHERE NOT EXISTS (
    SELECT login FROM users WHERE login='nick' AND password='123'
) LIMIT 1;

INSERT INTO products (name, price)
SELECT * FROM (SELECT 'Macchiato', 199) AS tmp
WHERE NOT EXISTS (
    SELECT name FROM products WHERE name = 'Macchiato' AND price = 199
) LIMIT 1;

INSERT INTO products (name, price)
SELECT * FROM (SELECT 'Espresso', 249) AS tmp
WHERE NOT EXISTS (
    SELECT name FROM products WHERE name = 'Espresso' AND price = 249
) LIMIT 1;

INSERT INTO products (name, price)
SELECT * FROM (SELECT 'Black coffee', 159) AS tmp
WHERE NOT EXISTS (
    SELECT name FROM products WHERE name = 'Black coffee' AND price = 159
) LIMIT 1;

INSERT INTO products (name, price)
SELECT * FROM (SELECT 'Doppio', 219) AS tmp
WHERE NOT EXISTS (
    SELECT name FROM products WHERE name = 'Doppio' AND price = 219
) LIMIT 1;

INSERT INTO products (name, price)
SELECT * FROM (SELECT 'Latte', 169) AS tmp
WHERE NOT EXISTS (
    SELECT name FROM products WHERE name = 'Latte' AND price = 169
) LIMIT 1;