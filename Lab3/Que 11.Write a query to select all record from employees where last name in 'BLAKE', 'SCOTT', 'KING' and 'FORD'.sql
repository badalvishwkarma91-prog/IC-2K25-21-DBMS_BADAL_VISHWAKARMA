mysql> create database badaldbms30;
Query OK, 1 row affected

mysql> use badaldbms30;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> salary decimal(10,2),
    -> job varchar(30)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,salary,job)
    -> values
    -> (101,'John','BLAKE',30000,'Manager'),
    -> (102,'Adam','SCOTT',40000,'Programmer'),
    -> (103,'James','KING',50000,'Manager'),
    -> (104,'Robert','FORD',45000,'Analyst'),
    -> (105,'David','SMITH',35000,'Clerk'),
    -> (106,'Rahul','SHARMA',32000,'Salesman');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select *
    -> from employees
    -> where last_name in ('BLAKE','SCOTT','KING','FORD');
+-------------+------------+-----------+----------+------------+
| employee_id | first_name | last_name | salary   | job        |
+-------------+------------+-----------+----------+------------+
|         101 | John       | BLAKE     | 30000.00 | Manager    |
|         102 | Adam       | SCOTT     | 40000.00 | Programmer |
|         103 | James      | KING      | 50000.00 | Manager    |
|         104 | Robert     | FORD      | 45000.00 | Analyst    |
+-------------+------------+-----------+----------+------------+
4 rows in set
