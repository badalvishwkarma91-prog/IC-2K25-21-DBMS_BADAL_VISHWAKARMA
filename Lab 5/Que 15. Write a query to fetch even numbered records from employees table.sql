mysql> CREATE DATABASE badaldbms59;
Query OK, 1 row affected

mysql> USE badaldbms59;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (1, 'Ajay', 'Yadav', 30000),
    -> (2, 'Arun', 'Tiwari', 40000),
    -> (3, 'Avni', 'Pathak', 35000),
    -> (4, 'Badal', 'Vishwakarma', 50000),
    -> (5, 'Laxmi', 'Patidar', 45000),
    -> (6, 'Rahul', 'Sharma', 25000);
Query OK, 6 rows affected

mysql> SELECT *
    -> FROM employees
    -> WHERE MOD(employee_id, 2) = 0;
