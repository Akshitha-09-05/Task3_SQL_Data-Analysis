-- Task 3: SQL for Data Analysis

USE ecommerce;

-- Show Tables
SHOW TABLES;

-- Display Customers
SELECT * FROM customers;

-- Display Products
SELECT * FROM products;

-- WHERE Clause
SELECT *
FROM products
WHERE price > 5000;

-- ORDER BY
SELECT *
FROM products
ORDER BY price DESC;

-- GROUP BY
SELECT category,
COUNT(*) AS Total_Products
FROM products
GROUP BY category;

-- SUM
SELECT SUM(price) AS Total_Price
FROM products;

-- AVG
SELECT AVG(price) AS Average_Price
FROM products;

-- INNER JOIN
SELECT customers.customer_name,
orders.order_id
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;

-- LEFT JOIN
SELECT customers.customer_name,
orders.order_id
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;

-- RIGHT JOIN
SELECT customers.customer_name,
orders.order_id
FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id;

-- Subquery
SELECT *
FROM products
WHERE price >
(
SELECT AVG(price)
FROM products
);

-- Create View
CREATE VIEW Expensive_Products AS
SELECT *
FROM products
WHERE price > 5000;

SELECT * FROM Expensive_Products;

-- Create Index
CREATE INDEX idx_price
ON products(price);