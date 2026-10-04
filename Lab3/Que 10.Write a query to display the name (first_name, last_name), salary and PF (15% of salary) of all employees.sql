mysql> create database badaldbms29;
Query OK, 1 row affected

mysql> use badaldbms29;
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

mysql> select first_name,last_name,salary,salary*15/100 as PF
    -> from employees;
+------------+-------------+----------+---------+
| first_name | last_name   | salary   | PF      |
+------------+-------------+----------+---------+
| Ajay       | Yadav       | 30000.00 | 4500.00 |
| Arun       | Tiwari      | 40000.00 | 6000.00 |
| Avni       | Pathak      | 35000.00 | 5250.00 |
| Badal      | Vishwakarma | 50000.00 | 7500.00 |
| Laxmi      | Patidar     | 45000.00 | 6750.00 |
+------------+-------------+----------+---------+
5 rows in set
