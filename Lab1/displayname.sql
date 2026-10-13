create database employe;
Query OK, 1 row affected (0.02 sec)

mysql> use employe;
Database changed
mysql> create table employe(idno int,name varchar(20),last_name varchar(30));
Query OK, 0 rows affected (0.28 sec)

mysql> show tables;
+-------------------+
| Tables_in_employe |
+-------------------+
| employe           |
+-------------------+
1 row in set (0.01 sec)

mysql> use employe;
Database changed
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| employe            |
| iips               |
| information_schema |
| mcadb              |
| mysql              |
| performance_schema |
| practice           |
| sakila             |
| students           |
| sys                |
| world              |
+--------------------+
11 rows in set (0.00 sec)

mysql> desc employe;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| idno      | int         | NO   | PRI | NULL    |       |
| name      | varchar(20) | YES  |     | NULL    |       |
| last_name | varchar(30) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

mysql> insert into employe (idno,name,last_name)values(101,'ram','sharma');
Query OK, 1 row affected (0.02 sec)

mysql> select * from employe;
+------+------+-----------+
| idno | name | last_name |
+------+------+-----------+
|  101 | ram  | sharma    |
+------+------+-----------+
1 row in set (0.00 sec)
