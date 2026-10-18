mysql> CREATE DATABASE badaldbms52;
Query OK, 1 row affected

mysql> USE badaldbms52;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Ajay', 'Yadav', 30000),
    -> (102, 'Arun', 'Bell', 40000),
    -> (103, 'Avni', 'Pathak', 35000),
    -> (104, 'Badal', 'Vishwakarma', 50000),
    -> (105, 'Laxmi', 'Patidar', 45000),
    -> (106, 'Rahul', 'Sharma', 25000);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT salary
    ->     FROM employees
    ->     WHERE last_name = 'Bell'
    -> );
