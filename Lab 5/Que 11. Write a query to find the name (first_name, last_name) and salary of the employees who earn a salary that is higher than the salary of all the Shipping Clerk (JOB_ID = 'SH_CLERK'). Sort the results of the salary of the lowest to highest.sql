mysql> CREATE DATABASE badaldbms55;
Query OK, 1 row affected

mysql> USE badaldbms55;
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
    -> (102, 'Arun', 'Tiwari', 'SH_CLERK', 25000),
    -> (103, 'Avni', 'Pathak', 'SH_CLERK', 28000),
    -> (104, 'Badal', 'Vishwakarma', 'IT_PROG', 50000),
    -> (105, 'Laxmi', 'Patidar', 'SA_REP', 35000),
    -> (106, 'Rahul', 'Sharma', 'IT_PROG', 40000),
    -> (107, 'Neha', 'Patel', 'SH_CLERK', 22000);
Query OK, 7 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > ALL (
    ->     SELECT salary
    ->     FROM employees
    ->     WHERE job_id = 'SH_CLERK'
    -> )
    -> ORDER BY salary ASC;
