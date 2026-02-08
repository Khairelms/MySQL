-- FINAL TABLE USING CONSTRAINTS

USE db1;

CREATE TABLE IF NOT EXISTS person (pid int auto_increment,
pname varchar(40) not null, page int not null,
pemail varchar(50) unique,
PRIMARY KEY(pid));

DESCRIBE person;

-- CRUD OPERATIONS
-- CRUD, which stands for Create, Read, Update, and Delete, 
-- are fundamental data manipulation operations in databases, 
-- and are essential for managing data in applications. 

CREATE DATABASE db2;

SHOW DATABASES;

-- delete database db2

DROP DATABASE db2;

CREATE TABLE dummy_table (id int not null auto_increment,
name varchar(40), age int,
PRIMARY KEY(id));

desc dummy_table;

-- ALTER STATEMENT used to add , delete or modify columns in an 
-- existing table

-- ALTER :  add a new column //will create new column at last of table

ALTER TABLE dummy_table ADD email varchar(50) unique;

-- ALTER :  modify an existing column

ALTER TABLE dummy_table MODIFY name varchar(70);

-- ALTER :  rename an existing column

ALTER TABLE dummy_table RENAME COLUMN name TO firstname;

-- add a new column

ALTER TABLE dummy_table ADD mno int;

-- ALTER : drop an existing column

ALTER TABLE dummy_table DROP COLUMN mno;

-- ALTER : adding a constraint to an existing column

ALTER TABLE dummy_table MODIFY firstname varchar(70) NOT NULL;

-- ALTER : change the data type of an existing column

ALTER TABLE dummy_table MODIFY email varchar(255) NOT NULL;

-- DROP TABLE

DROP TABLE dummy_table;

SHOW TABLES;

CREATE TABLE emp (id int, department varchar(100), salary int);

desc emp;

ALTER TABLE emp
RENAME COLUMN id TO empId,
RENAME COLUMN department TO sector,
RENAME COLUMN salary TO payment;

-- change column name to new name include type 

ALTER TABLE emp
CHANGE empId employeeID int,
CHANGE sector department varchar(50),
CHANGE payment salary int NOT NULL;

-- INSERT AND SELECT STATEMENT

INSERT INTO emp (employeeID, department, salary) VALUES (101, 'IT', 5600);

INSERT INTO emp VALUES (102, 'Marketing', 4600);	-- can used syntax but not recommended

INSERT INTO emp (employeeID, department, salary) VALUES
(103, 'IT', 6700),
(104, 'Admin', 8000),
(105, 'Marketing', 6700),
(106, 'Finance', 7800);

SELECT * FROM emp;