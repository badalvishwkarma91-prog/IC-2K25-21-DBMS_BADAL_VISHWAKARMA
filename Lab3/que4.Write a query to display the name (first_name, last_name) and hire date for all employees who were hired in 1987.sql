mysql> create database badaldbms22;
Query OK, 1 row affected

mysql> use badaldbms22;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> hire_date date
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,hire_date)
    -> values
    -> (101,'Ajay','Yadav','1987-01-15'),
    -> (102,'Arun','Tiwari','1986-05-20'),
    -> (103,'Avni','Pathak','1987-07-10'),
    -> (104,'Badal','Vishwakarma','1988-03-25'),
    -> (105,'Laxmi','Patidar','1987-11-05');
Query OK, 5 rows affected
Records: 5  Duplicates: 0  Warnings: 0

mysql> select first_name,last_name,hire_date
    -> from employees
    -> where year(hire_date) = 1987;
+------------+-------------+------------+
| first_name | last_name   | hire_date  |
+------------+-------------+------------+
| Ajay       | Yadav       | 1987-01-15 |
| Avni       | Pathak      | 1987-07-10 |
| Laxmi      | Patidar     | 1987-11-05 |
+------------+-------------+------------+
3 rows in set
