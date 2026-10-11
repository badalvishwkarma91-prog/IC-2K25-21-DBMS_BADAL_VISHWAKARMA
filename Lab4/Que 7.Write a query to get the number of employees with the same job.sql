mysql> create database badaldbms37;
Query OK, 1 row affected

mysql> use badaldbms37;
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
    -> (103,'Avni','Pathak','Programmer'),
    -> (104,'Badal','Vishwakarma','Manager'),
    -> (105,'Laxmi','Patidar','Programmer'),
    -> (106,'Rahul','Sharma','Accountant');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select job, count(*) as 'Number of Employees'
    -> from employees
    -> group by job;
+------------+---------------------+
| job        | Number of Employees |
+------------+---------------------+
| Programmer |                   3 |
| Manager    |                   2 |
| Accountant |                   1 |
+------------+---------------------+
3 rows in set
