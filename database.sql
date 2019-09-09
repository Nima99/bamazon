DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;
USE bamazon_db;
CREATE TABLE products (
item_id INTEGER(7) AUTO_INCREMENT NOT NULL,
product_name VARCHAR(150) NOT NULL,
price FLOAT(10,2),
stock_quantity INT(8),
UNIQUE (product_name),
PRIMARY KEY (item_id)
);
alter table products auto_increment = 1000;

use bamazon_db

INSERT INTO products (product_name, department_name, price, stock quantity)
VALUES ("DELL", "PC", 599.99, 13),
("MACBOOKPRO", "PC", 900.99, 8),
("Alienware", "PC", 1300.00, 4),
("DELL", "Desktop", 1599.99, 10),
("APPLE", "Desktop", 1400.00, 8),
("Alienware", "Desktop", 5600.00, 4),
("APPLE", "IPHONE", 599.00, 40),
("SONYERICSON", "FLIPPHONE", 90, 3),
("PS4", "Consle", 699, 9),
("Xbox", "Console", 799 ,9);

ALTER TABLE products ADD Product_sales FLOAT(10, 2);
ALTER TABLE products ALTER Product_sales SET DEFAULT 0.00;

CREATE TABLE departments (
department_id INT(10) AUTO_INCREMENT NOT NULL,
department_name VARCHAR(50),
over_head_costs INT(10),
UNIQUE (department_name),
PRIMARY KEY (department_id)
);

ALTER TABLE departments AUTO_INCREMENT = 100;
INSERT INTO departments (department_name) Select DISTINCT(department_name) FROM products;

ALTER TABLE departments MODIFY COLUMN over_head_costs FLOAT(10,2);

UPDATE products SET product_sales = 0.00;
UPDATE products SET stock_quantity - 12 where item_id -1006;

SELECT * FROM products;
SELECT * FROM departments;

