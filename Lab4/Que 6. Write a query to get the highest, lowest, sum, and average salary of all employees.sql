mysql> create database badaldbms36;
Query OK, 1 row affected

mysql> use badaldbms36;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,salary)
    -> values
    -> (101,'Ajay','Yadav',30000),
    -> (102,'Arun','Tiwari',40000),
    -> (103,'Avni','Pathak',35000),
    -> (104,'Badal','Vishwakarma',50000),
    -> (105,'Laxmi','Patidar',45000);
Query OK, 5 rows affected
Records: 5  Duplicates: 0  Warnings: 0

mysql> select max(salary) as 'Highest Salary',
    -> min(salary) as 'Lowest Salary',
    -> sum(salary) as 'Total Salary',
    -> avg(salary) as 'Average Salary'
    -> from employees;
+----------------+---------------+--------------+----------------+
| Highest Salary | Lowest Salary | Total Salary | Average Salary |
+----------------+---------------+--------------+----------------+
|       50000.00 |      30000.00 |    200000.00 |    40000.0000  |
+----------------+---------------+--------------+----------------+
1 row in set
