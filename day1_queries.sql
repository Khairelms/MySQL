-- Coments In MySQL
-- Comments provide brief description about your query

/* using this syntex
we can write
multi line comments */


-- Select or Use The Databse
USE db1;

-- MySQL Data Types
-- defines what kind of a value a column / field can hold

-- Numeric Data Types         int / float / double / decimal
-- String Data Types          varchar / text / char
-- Date And Time Data Types   date / time / datetime

-- rules to defining the table name
-- 1) a table can not have a white space
-- 2) a table can not starts with number
-- 3) try to avoid reserved keywords as table name


-- varchar is best suited for storing short to medium length strings
-- char is best suited for storing short strings eg: male female yes no T F
-- text is best suited for storing large amount of textual data eg: bio

CREATE TABLE stud1 (id int, stname varchar(20), age int,
stper double(10,2), stregdate date);

-- DROP table tablename;
-- used to drop / delete an existing table

DROP TABLE stud1;

CREATE TABLE stud1 (id int, stname varchar(20), age int,
stper decimal(10,2), stregdate date);

-- schema of table
-- used to describe the structure of your table
-- Describe tableName;

DESCRIBE stud1;
