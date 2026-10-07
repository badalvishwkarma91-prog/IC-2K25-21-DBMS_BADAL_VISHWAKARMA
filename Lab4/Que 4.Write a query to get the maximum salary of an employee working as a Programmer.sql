mysql> create database badaldbms34;
Query OK, 1 row affected

mysql> use badaldbms34;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> job varchar(30),
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,job,salary)
    -> values
    -> (101,'Ajay','Yadav','Programmer',30000),
    -> (102,'Arun','Tiwari','Manager',45000),
    -> (103,'Avni','Pathak','Programmer',40000),
    -> (104,'Badal','Vishwakarma','Programmer',50000),
    -> (105,'Laxmi','Patidar','Accountant',35000),
    -> (106,'Rahul','Sharma','Programmer',45000);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select max(salary) as 'Maximum Salary'
    -> from employees
    -> where job = 'Programmer';
+----------------+
| Maximum Salary |
+----------------+
|       50000.00 |
+----------------+
1 row in set
