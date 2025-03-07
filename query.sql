-- SQL Queries for managing the customers table in the python_test database

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS python_test;

-- Use the python_test database
USE python_test;

-- Create the customers table if it doesn't exist
CREATE TABLE IF NOT EXISTS customers (
    userid INT PRIMARY KEY,
    username VARCHAR(200),
    phone VARCHAR(15)
);

-- Insert a new record into customers
-- Use with parameters: userid, username, phone
INSERT INTO customers (userid, username, phone) VALUES (%s, %s, %s);

-- Example: Insert a sample record (uncomment to use)
-- INSERT INTO customers (userid, username, phone) VALUES (1, 'john_doe', '123-456-7890');

-- Retrieve all records from customers
SELECT * FROM customers;

-- Delete a record from customers by userid
-- Use with parameter: userid
DELETE FROM customers WHERE userid = %s;

-- Update a record in customers by userid
-- Use with parameters: username, phone, userid
UPDATE customers SET username = %s, phone = %s WHERE userid = %s;
