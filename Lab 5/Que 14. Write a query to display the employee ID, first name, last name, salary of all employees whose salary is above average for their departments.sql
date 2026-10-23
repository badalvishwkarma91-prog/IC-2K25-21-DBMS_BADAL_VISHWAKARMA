mysql> CREATE DATABASE badaldbms58;
Query OK, 1 row affected

mysql> USE badaldbms58;
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
    -> (103, 'Avni', 'Pathak', 50000, 10),
    -> (104, 'Badal', 'Vishwakarma', 25000, 20),
    -> (105, 'Laxmi', 'Patidar', 35000, 20),
    -> (106, 'Rahul', 'Sharma', 45000, 20),
    -> (107, 'Neha', 'Patel', 60000, 30),
    -> (108, 'Rohit', 'Joshi', 40000, 30);
Query OK, 8 rows affected

mysql> SELECT employee_id, first_name, last_name, salary
    -> FROM employees e
    -> WHERE salary > (
    ->     SELECT AVG(salary)
    ->     FROM employees
    ->     WHERE department_id = e.department_id
    -> );
