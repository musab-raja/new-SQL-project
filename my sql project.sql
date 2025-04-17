CREATE DATABASE sales_finance_db;
USE sales_finance_db;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50),
    join_date DATE
);

INSERT INTO customers VALUES
(1, 'Ali Khan', 'Lahore', '2022-01-01'),
(2, 'Sara Malik', 'Karachi', '2022-03-15'),
(3, 'Usman Javed', 'Islamabad', '2023-01-10');

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 100000),
(102, 'Coffee', 'Beverages', 500),
(103, 'Notebook', 'Stationery', 200);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO sales VALUES
(1001, 1, 101, 1, '2023-01-10'),
(1002, 2, 102, 3, '2023-01-11'),
(1003, 1, 103, 5, '2023-02-01'),
(1004, 3, 102, 2, '2023-02-15');

select * from sales;

select * from customers  sales ;