mysql> create database badaldbms35;
Query OK, 1 row affected

mysql> use badaldbms35;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> department_id int,
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,department_id,salary)
    -> values
    -> (101,'Ajay','Yadav',90,30000),
    -> (102,'Arun','Tiwari',90,40000),
    -> (103,'Avni','Pathak',50,35000),
    -> (104,'Badal','Vishwakarma',90,50000),
    -> (105,'Laxmi','Patidar',90,45000),
    -> (106,'Rahul','Sharma',60,25000);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select avg(salary) as 'Average Salary',
    -> count(*) as 'Number of Employees'
    -> from employees
    -> where department_id = 90;
+----------------+---------------------+
| Average Salary | Number of Employees |
+----------------+---------------------+
|    41250.000000|                   4 |
+----------------+---------------------+
1 row in set
