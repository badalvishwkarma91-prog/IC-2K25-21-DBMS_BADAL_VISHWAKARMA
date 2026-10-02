mysql> create database badaldbms19;
Query OK, 1 row affected

mysql> use badaldbms19;
Database changed

mysql> create table employees (employee_id int primary key,first_name varchar(30),last_name varchar(30),salary decimal(10,2) );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,salary)values(101,'Ajay','Yadav',9000),(102,'Arun','Tiwari',12000),(103,'Avni','Pathak',15000),(104,'Badal','Vishwakarma',18000),(105,'Laxmi','Patidar',25000);
Query OK, 5 rows affected
Records: 5  Duplicates: 0  Warnings: 0

mysql> select first_name,last_name,salary
    -> from employees
    -> where salary not between 10000 and 15000;
+------------+-------------+----------+
| first_name | last_name   | salary   |
+------------+-------------+----------+
| Ajay       | Yadav       |  9000.00 |
| Badal      | Vishwakarma | 18000.00 |
| Laxmi      | Patidar     | 25000.00 |
+------------+-------------+----------+
3 rows in set
