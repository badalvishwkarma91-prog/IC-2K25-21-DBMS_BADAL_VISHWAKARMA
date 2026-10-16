mysql> CREATE DATABASE badaldbms48;
Query OK, 1 row affected

mysql> USE badaldbms48;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> manager_id INT
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (100, 'Steven', 'King', NULL),
    -> (101, 'Neena', 'Kochhar', 100),
    -> (102, 'Lex', 'De Haan', 100),
    -> (103, 'Alexander', 'Hunold', 102),
    -> (104, 'Bruce', 'Ernst', 103),
    -> (105, 'David', 'Austin', 103),
    -> (106, 'Nancy', 'Greenberg', 101);
Query OK, 7 rows affected

mysql> SELECT first_name, last_name
    -> FROM employees
    -> WHERE employee_id IN (
    ->     SELECT DISTINCT manager_id
    ->     FROM employees
    ->     WHERE manager_id IS NOT NULL
    -> );
