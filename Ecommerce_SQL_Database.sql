-- Create Database
CREATE DATABASE ecommerce;
USE ecommerce;

-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO customers VALUES
(1,'Rahul','Hyderabad'),
(2,'Priya','Bangalore'),
(3,'Arjun','Chennai'),
(4,'Sneha','Mumbai'),
(5,'Kiran','Delhi');

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products VALUES
(101,'Laptop','Electronics',65000),
(102,'Mouse','Electronics',800),
(103,'Chair','Furniture',3500),
(104,'Table','Furniture',6000),
(105,'Phone','Electronics',25000),
(106,'Headphones','Electronics',2000);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders VALUES
(1001,1,'2024-01-10'),
(1002,2,'2024-01-12'),
(1003,1,'2024-02-05'),
(1004,3,'2024-02-20'),
(1005,5,'2024-03-15');

-- Order Items Table
CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items VALUES
(1,1001,101,1),
(2,1001,102,2),
(3,1002,105,1),
(4,1003,106,1),
(5,1004,103,2),
(6,1005,104,1);