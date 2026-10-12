mysql> create database badaldbms39;
Query OK, 1 row affected

mysql> use badaldbms39;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> manager_id int,
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,manager_id,salary)
    -> values
    -> (101,'Ajay','Yadav',201,30000),
    -> (102,'Arun','Tiwari',201,25000),
    -> (103,'Avni','Pathak',202,40000),
    -> (104,'Badal','Vishwakarma',202,35000),
    -> (105,'Laxmi','Patidar',201,28000),
    -> (106,'Rahul','Sharma',203,45000);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select manager_id, min(salary) as 'Lowest Salary'
    -> from employees
    -> group by manager_id;
+------------+---------------+
| manager_id | Lowest Salary |
+------------+---------------+
|        201 |      25000.00 |
|        202 |      35000.00 |
|        203 |      45000.00 |
+------------+---------------+
3 rows in set
