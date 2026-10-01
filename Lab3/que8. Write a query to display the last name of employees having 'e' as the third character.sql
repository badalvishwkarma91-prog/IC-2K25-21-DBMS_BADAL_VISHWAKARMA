mysql> create database badaldbms26;
Query OK, 1 row affected

mysql> use badaldbms26;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name)
    -> values
    -> (101,'Ajay','Mehta'),
    -> (102,'Arun','Verma'),
    -> (103,'Avni','Patel'),
    -> (104,'Badal','Sharma'),
    -> (105,'Laxmi','Shetty'),
    -> (106,'Rahul','Meena');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select last_name
    -> from employees
    -> where last_name like '__e%';
+-----------+
| last_name |
+-----------+
| Mehta     |
| Shetty    |
| Meena     |
+-----------+
3 rows in set
