DROP DATABASE ecommerce_db;
CREATE DATABASE ecommerce_db;
USE ecommerce_db;
CREATE TABLE users(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE,
password VARCHAR(100),
time_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
description TEXT,
price DECIMAL(10, 2),
stock INT
);
CREATE TABLE orders(
id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT,
order_date DATE,
total_amount DECIMAL(10, 2),
FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO users(id, name, email, password, time_created) VALUES
(1, "Oga Wisdom", "wisdom256@gmail.com", "password","2025-05-17");

SELECT * FROM users
WHERE id = 1;
INSERT INTO products(id, name, description, price, stock) VALUES
(1, "Affang Soup", "Puff Puff", 400.99, 6);

SELECT * FROM products
WHERE stock > 5;