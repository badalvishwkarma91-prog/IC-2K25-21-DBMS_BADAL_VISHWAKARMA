mysql> CREATE DATABASE badaldbms45;
Query OK, 1 row affected

mysql> USE badaldbms45;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (1,'Lex','De Haan',17000),
    -> (2,'Alexander','Hunold',9000),
    -> (3,'Kimberely','Grant',7000),
    -> (4,'William','Smith',8000),
    -> (5,'Penny','Bull',4100),
    -> (6,'Neena','Kochhar',17000),
    -> (7,'Steven','King',24000);
Query OK, 7 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT salary
    ->     FROM employees
    ->     WHERE last_name = 'Bull'
    -> );
