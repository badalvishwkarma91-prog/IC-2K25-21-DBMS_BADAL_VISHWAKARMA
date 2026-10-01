mysql> create database badaldbms25;
Query OK, 1 row affected

mysql> use badaldbms25;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name)
    -> values
    -> (101,'Ajay','Yadav'),
    -> (102,'Arun','Tiwari'),
    -> (103,'Avni','Patel'),
    -> (104,'Badal','Sharma'),
    -> (105,'Laxmi','Gupta'),
    -> (106,'Rahul','Singh');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select last_name
    -> from employees
    -> where length(last_name) = 6;
+-----------+
| last_name |
+-----------+
| Yadav     |
| Tiwari    |
| Sharma    |
+-----------+
3 rows in set
