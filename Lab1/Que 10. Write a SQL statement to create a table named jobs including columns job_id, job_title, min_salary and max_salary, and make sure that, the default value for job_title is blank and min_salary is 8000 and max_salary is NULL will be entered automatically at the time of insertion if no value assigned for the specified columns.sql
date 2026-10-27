mysql> CREATE DATABASE badaldbms64;
Query OK, 1 row affected

mysql> USE badaldbms64;
Database changed

mysql> CREATE TABLE jobs (
    -> job_id VARCHAR(10),
    -> job_title VARCHAR(35) DEFAULT '',
    -> min_salary DECIMAL(10,2) DEFAULT 8000,
    -> max_salary DECIMAL(10,2) DEFAULT NULL
    -> );
Query OK, 0 rows affected
mysql> INSERT INTO jobs (job_id)
    -> VALUES ('IT_PROG');
Query OK, 1 row affected

mysql> SELECT * FROM jobs;
+---------+-----------+------------+------------+
| job_id  | job_title | min_salary | max_salary |
+---------+-----------+------------+------------+
| IT_PROG |           |    8000.00 |       NULL |
+---------+-----------+------------+------------+
1 row in set
