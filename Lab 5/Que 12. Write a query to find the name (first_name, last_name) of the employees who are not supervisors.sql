mysql> CREATE DATABASE badaldbms56;
Query OK, 1 row affected

mysql> USE badaldbms56;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> manager_id INT
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Ajay', 'Yadav', NULL),
    -> (102, 'Arun', 'Tiwari', 101),
    -> (103, 'Avni', 'Pathak', 101),
    -> (104, 'Badal', 'Vishwakarma', 102),
    -> (105, 'Laxmi', 'Patidar', 102),
    -> (106, 'Rahul', 'Sharma', 103);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name
    -> FROM employees
    -> WHERE employee_id NOT IN (
    ->     SELECT DISTINCT manager_id
    ->     FROM employees
    ->     WHERE manager_id IS NOT NULL
    -> );
