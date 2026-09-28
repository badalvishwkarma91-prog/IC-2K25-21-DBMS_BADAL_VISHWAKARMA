mysql> create database badaldbms20;
Query OK, 1 row affected

mysql> use badaldbms20;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> department_id int
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,department_id)
    -> values
    -> (101,'Ajay','Yadav',30),
    -> (102,'Arun','Tiwari',20),
    -> (103,'Avni','Pathak',100),
    -> (104,'Badal','Vishwakarma',30),
    -> (105,'Laxmi','Patidar',50),
    -> (106,'Rahul','Sharma',100);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select first_name,last_name,department_id
    -> from employees
    -> where department_id in (30,100)
    -> order by department_id asc;
+------------+-------------+---------------+
| first_name | last_name   | department_id |
+------------+-------------+---------------+
| Ajay       | Yadav       |            30 |
| Badal      | Vishwakarma |            30 |
| Avni       | Pathak      |           100 |
| Rahul      | Sharma      |           100 |
+------------+-------------+---------------+
4 rows in set
