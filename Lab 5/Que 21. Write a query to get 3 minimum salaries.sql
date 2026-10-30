mysql> CREATE DATABASE badaldbms69;
Query OK, 1 row affected

mysql> USE badaldbms69;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> employee_name VARCHAR(50),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected
mysql> INSERT INTO employees VALUES
    -> (1, 'Ajay', 25000),
    -> (2, 'Arun', 30000),
    -> (3, 'Avni', 45000),
    -> (4, 'Badal', 40000),
    -> (5, 'Laxmi', 35000),
    -> (6, 'Rahul', 20000);
Query OK, 6 rows affected
mysql> SELECT DISTINCT salary
    -> FROM employees
    -> ORDER BY salary ASC
    -> LIMIT 3;
+----------+
| salary   |
+----------+
| 20000.00 |
| 25000.00 |
| 30000.00 |
+----------+
3 rows in set
