mysql> create database badaldbms10;
Query OK, 1 row affected (0.01 sec)

mysql> use badaldbms10;
Database changed

mysql> create table employees (
    -> employee_id int,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> job_id varchar(20),
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employees(employee_id,first_name,last_name,job_id,salary)
    -> values
    -> (101,'Ajay','Yadav','IT_PROG',30000),
    -> (102,'Arun','Tiwari','HR_REP',40000),
    -> (103,'Avni','Pathak','IT_PROG',35000),
    -> (104,'Badal','Vishwakarma','SA_REP',50000),
    -> (105,'Laxmi','Patidar','HR_REP',45000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select count(distinct job_id) as `Number of Jobs`
    -> from employees;
+----------------+
| Number of Jobs |
+----------------+
|              3 |
+----------------+
1 row in set (0.00 sec)

mysql>
