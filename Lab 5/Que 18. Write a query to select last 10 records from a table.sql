mysql> CREATE DATABASE badaldbms66;
Query OK, 1 row affected

mysql> USE badaldbms66;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> employee_name VARCHAR(50),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected
mysql> INSERT INTO employees VALUES
    -> (1, 'Ajay', 20000),
    -> (2, 'Arun', 22000),
    -> (3, 'Avni', 24000),
    -> (4, 'Badal', 26000),
    -> (5, 'Laxmi', 28000),
    -> (6, 'Rahul', 30000),
    -> (7, 'Priya', 32000),
    -> (8, 'Rohit', 34000),
    -> (9, 'Neha', 36000),
    -> (10, 'Aman', 38000),
    -> (11, 'Karan', 40000),
    -> (12, 'Pooja', 42000);
Query OK, 12 rows affected
mysql> SELECT *
    -> FROM employees
    -> ORDER BY employee_id DESC
    -> LIMIT 10;
+-------------+---------------+----------+
| employee_id | employee_name | salary   |
+-------------+---------------+----------+
|          12 | Pooja         | 42000.00 |
|          11 | Karan         | 40000.00 |
|          10 | Aman          | 38000.00 |
|           9 | Neha          | 36000.00 |
|           8 | Rohit         | 34000.00 |
|           7 | Priya         | 32000.00 |
|           6 | Rahul         | 30000.00 |
|           5 | Laxmi         | 28000.00 |
|           4 | Badal         | 26000.00 |
|           3 | Avni          | 24000.00 |
+-------------+---------------+----------+
10 rows in set
