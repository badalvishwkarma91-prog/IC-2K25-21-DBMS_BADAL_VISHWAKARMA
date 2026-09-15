mysql> create database badaldbms3;
Query OK, 1 row affected (0.01 sec)

mysql> use badaldbms3;
Database changed

mysql> create table employees (
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> department_id int
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employees(first_name,last_name,department_id)
    -> values('Ajay','Yadav',10),('Arun','Tiwari',20),('Avni','Pathak',10),('Badal','Vishwakarma',30),('Laxmi','Patidar',20);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employees order by first_name desc;
+------------+-------------+---------------+
| first_name | last_name   | department_id |
+------------+-------------+---------------+
| Laxmi      | Patidar     |            20 |
| Badal      | Vishwakarma |            30 |
| Avni       | Pathak      |            10 |
| Arun       | Tiwari      |            20 |
| Ajay       | Yadav       |            10 |
+------------+-------------+---------------+
5 rows in set (0.00 sec)

mysql>
