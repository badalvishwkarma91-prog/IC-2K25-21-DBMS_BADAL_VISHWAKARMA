mysql> create database badaldbms11;
Query OK, 1 row affected (0.01 sec)

mysql> use badaldbms11;
Database changed

mysql> create table employees (
    -> employee_id int,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employees(employee_id,first_name,last_name,salary)
    -> values
    -> (101,'Ajay','Yadav',30000),
    -> (102,'Arun','Tiwari',40000),
    -> (103,'Avni','Pathak',35000),
    -> (104,'Badal','Vishwakarma',50000),
    -> (105,'Laxmi','Patidar',45000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select upper(first_name) as `First Name`
    -> from employees;
+------------+
| First Name |
+------------+
| AJAY       |
| ARUN       |
| AVNI       |
| BADAL      |
| LAXMI      |
+------------+
5 rows in set (0.00 sec)

mysql>
