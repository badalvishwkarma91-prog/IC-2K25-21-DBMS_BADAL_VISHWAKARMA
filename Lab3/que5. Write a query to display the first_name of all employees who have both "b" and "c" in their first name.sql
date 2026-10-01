mysql> create database badaldbms;
Query OK, 1 row affected

mysql> use badaldbms;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name)
    -> values
    -> (101,'Abcde','Yadav'),
    -> (102,'Bacde','Tiwari'),
    -> (103,'Ajay','Pathak'),
    -> (104,'Bobby','Sharma'),
    -> (105,'Alice','Patidar'),
    -> (106,'Cobra','Verma');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select first_name
    -> from employees
    -> where first_name like '%b%'
    -> and first_name like '%c%';
+------------+
| first_name |
+------------+
| Abcde      |
| Bacde      |
| Cobra      |
+------------+
3 rows in set
