mysql> create database badaldbms27;
Query OK, 1 row affected

mysql> use badaldbms27;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> job varchar(30)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,job)
    -> values
    -> (101,'Ajay','Yadav','Programmer'),
    -> (102,'Arun','Tiwari','Manager'),
    -> (103,'Avni','Pathak','Accountant'),
    -> (104,'Badal','Vishwakarma','Programmer'),
    -> (105,'Laxmi','Patidar','Manager'),
    -> (106,'Rahul','Sharma','Salesman');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select distinct job
    -> from employees;
+------------+
| job        |
+------------+
| Programmer |
| Manager    |
| Accountant |
| Salesman   |
+------------+
4 rows in set
