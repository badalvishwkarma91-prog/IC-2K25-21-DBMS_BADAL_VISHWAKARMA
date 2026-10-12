mysql> create database badaldbms40;
Query OK, 1 row affected

mysql> use badaldbms40;
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
    -> (101,'Ajay','Yadav',10,30000),
    -> (102,'Arun','Tiwari',20,40000),
    -> (103,'Avni','Pathak',10,35000),
    -> (104,'Badal','Vishwakarma',30,50000),
    -> (105,'Laxmi','Patidar',20,45000),
    -> (106,'Rahul','Sharma',30,25000);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select department_id, sum(salary) as 'Total Salary'
    -> from employees
    -> group by department_id;
+---------------+--------------+
| department_id | Total Salary |
+---------------+--------------+
|            10 |     65000.00 |
|            20 |     85000.00 |
|            30 |     75000.00 |
+---------------+--------------+
3 rows in set
