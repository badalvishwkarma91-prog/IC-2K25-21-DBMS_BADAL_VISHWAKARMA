mysql> create database badaldbms24;
Query OK, 1 row affected

mysql> use badaldbms24;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> last_name varchar(30),
    -> job varchar(30),
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,last_name,job,salary)
    -> values
    -> (101,'Yadav','Programmer',4000),
    -> (102,'Tiwari','Programmer',4500),
    -> (103,'Pathak','Shipping Clerk',7000),
    -> (104,'Vishwakarma','Shipping Clerk',10000),
    -> (105,'Patidar','Programmer',12000),
    -> (106,'Sharma','Shipping Clerk',15000),
    -> (107,'Gupta','Programmer',18000);
Query OK, 7 rows affected
Records: 7  Duplicates: 0  Warnings: 0

mysql> select last_name,job,salary
    -> from employees
    -> where job in ('Programmer','Shipping Clerk')
    -> and salary not in (4500,10000,15000);
+-------------+----------------+----------+
| last_name   | job            | salary   |
+-------------+----------------+----------+
| Yadav       | Programmer     |  4000.00 |
| Pathak      | Shipping Clerk |  7000.00 |
| Patidar     | Programmer     | 12000.00 |
| Gupta       | Programmer     | 18000.00 |
+-------------+----------------+----------+
4 rows in set
