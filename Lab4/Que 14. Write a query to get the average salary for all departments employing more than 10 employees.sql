mysql> create database badaldbms44;
Query OK, 1 row affected

mysql> use badaldbms44;
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
    -> (102,'Arun','Tiwari',10,40000),
    -> (103,'Avni','Pathak',10,35000),
    -> (104,'Badal','Vishwakarma',10,50000),
    -> (105,'Laxmi','Patidar',10,45000),
    -> (106,'Rahul','Sharma',10,25000),
    -> (107,'Riya','Verma',10,32000),
    -> (108,'Aman','Gupta',10,38000),
    -> (109,'Neha','Patel',10,42000),
    -> (110,'Rohit','Joshi',10,36000),
    -> (111,'Karan','Mehta',10,39000),
    -> (112,'Pooja','Singh',20,28000),
    -> (113,'Vikas','Jain',20,35000);
Query OK, 13 rows affected
Records: 13  Duplicates: 0  Warnings: 0

mysql> select department_id, avg(salary) as 'Average Salary'
    -> from employees
    -> group by department_id
    -> having count(*) > 10;
+---------------+----------------+
| department_id | Average Salary |
+---------------+----------------+
|            10 |    37416.6667  |
+---------------+----------------+
1 row in set
