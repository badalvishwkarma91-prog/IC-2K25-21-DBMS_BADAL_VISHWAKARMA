mysql> CREATE DATABASE badaldbms54;
Query OK, 1 row affected

mysql> USE badaldbms54;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2),
    -> department_id INT
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Ajay', 'Yadav', 30000, 10),
    -> (102, 'Arun', 'Tiwari', 40000, 10),
    -> (103, 'Avni', 'Pathak', 25000, 20),
    -> (104, 'Badal', 'Vishwakarma', 50000, 30),
    -> (105, 'Laxmi', 'Patidar', 45000, 20),
    -> (106, 'Rahul', 'Sharma', 35000, 30);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT AVG(salary)
    ->     FROM employees
    -> );
