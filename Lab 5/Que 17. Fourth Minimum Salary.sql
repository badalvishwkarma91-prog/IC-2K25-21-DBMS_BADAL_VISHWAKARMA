mysql> CREATE DATABASE badaldbms61;
Query OK, 1 row affected

mysql> USE badaldbms61;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Ajay', 'Yadav', 50000),
    -> (102, 'Arun', 'Tiwari', 45000),
    -> (103, 'Avni', 'Pathak', 40000),
    -> (104, 'Badal', 'Vishwakarma', 35000),
    -> (105, 'Laxmi', 'Patidar', 30000),
    -> (106, 'Rahul', 'Sharma', 25000);
Query OK, 6 rows affected

mysql> SELECT DISTINCT salary
    -> FROM employees
    -> ORDER BY salary ASC
    -> LIMIT 1 OFFSET 3;
