mysql> CREATE DATABASE badaldbms50;
Query OK, 1 row affected

mysql> USE badaldbms50;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> job_id VARCHAR(20),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Ajay', 'Yadav', 'IT_PROG', 30000),
    -> (102, 'Arun', 'Tiwari', 'IT_PROG', 25000),
    -> (103, 'Avni', 'Pathak', 'IT_PROG', 35000),
    -> (104, 'Badal', 'Vishwakarma', 'SA_REP', 40000),
    -> (105, 'Laxmi', 'Patidar', 'SA_REP', 30000),
    -> (106, 'Rahul', 'Sharma', 'SA_REP', 45000);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees e
    -> WHERE salary = (
    ->     SELECT MIN(salary)
    ->     FROM employees
    ->     WHERE job_id = e.job_id
    -> );
