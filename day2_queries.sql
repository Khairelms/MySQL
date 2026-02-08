USE db1;

-- MySQL Constraints
-- Constraints are used to specify rules for data in a table

-- NOT NULL constraint
-- ENFORCES A COLUMN NOT TO ACCEPT A NULL values

CREATE TABLE s1 (rno int NOT NULL, stname varchar(30) NOT NULL);

-- INSERT INTO  is used to insert records into the table

INSERT INTO s1 (rno, stname) VALUES (1, 'John');
INSERT INTO s1 (rno, stname) VALUES (2, 'Alex');
INSERT INTO s1 (stname) VALUES ('Tina');
INSERT INTO s1 (rno, stname) VALUES (3, 'Tina');
INSERT INTO s1 (rno, stname) VALUES ('Smith');

-- UNIQUE Constraint
-- ENSURES THAT ALL VALUES IN YOUR COLUMN MUST BE UNIQUE no dublicate records

CREATE TABLE s2 (rno int NOT NULL UNIQUE, stname varchar(30) NOT NULL);
INSERT INTO s2 (rno, stname) VALUES (1, 'John');
INSERT INTO s2 (rno, stname) VALUES (2, 'Alex');
INSERT INTO s2 (rno, stname) VALUES (2, 'Smith');
INSERT INTO s2 (rno, stname) VALUES (3, 'Smith');
INSERT INTO s2 (rno, stname) VALUES (4, 'Smith');

-- PRIMARY KEY 
-- PRIMARY KEY IS THE COMBINATION OF NOT NULL AND UNIQUE
-- A TABLE CAN HAVE ONLY ONE PRIMARY KEY , BUT IT CAN HAVE MULTIPLE UNIQUE CONSTRAINT

CREATE TABLE s3 (rno int PRIMARY KEY, stname varchar(30) NOT NULL);
INSERT INTO s3 (rno, stname) VALUES (1, 'John');
INSERT INTO s3 (rno, stname) VALUES (2, 'Alex');
INSERT INTO s3 (rno, stname) VALUES (2, 'Smith'); -- unique
INSERT INTO s3 (stname) VALUES ('Smith');		  -- not null	

-- A TABLE CAN HAVE ONLY ONE PRIMARY KEY , BUT IT CAN HAVE MULTIPLE UNIQUE CONSTRAINT

-- CREATE TABLE s4 (rno int PRIMARY KEY, nric int PRIMARY KEY, stname varchar(30) NOT NULL);

CREATE TABLE s4 (rno int PRIMARY KEY, nric int NOT NULL UNIQUE, stname varchar(30) NOT NULL , 
email varchar(20) UNIQUE);

-- A PRIMARY KEY CAN NOT HAVE NULL VALUE , BUT A UNIQUE CONSTRAINT CAN HAVE IT

INSERT INTO s4 (rno , nric , stname , email) VALUES (1,12345,'John','j@gmail.com');
INSERT INTO s4 (nric , stname , email) VALUES (7689,'Alex','al@gmail.com');
INSERT INTO s4 (rno , nric , stname) VALUES (2,7689,'Alex');

-- SHOW RECORDS OF TABLE 
-- SELECT STATEMENT

SELECT * FROM s4;

-- DEFAULT CONSTRAINT
-- USED TO SET A DEFAULT VALUE FOR A COLUMN

CREATE TABLE s5 (rno int PRIMARY KEY, nric int NOT NULL UNIQUE, stname varchar(30) NOT NULL , 
email varchar(20) DEFAULT 'not mentioned');

INSERT INTO s5 (rno , nric , stname , email) VALUES (1,12345,'John','j@gmail.com');
INSERT INTO s5 (rno , nric , stname) VALUES (2,7689,'Alex');

SELECT * FROM s5;

-- CHECK CONSTRAINT
-- USED TO LIMIT THE VALUE RANGE THAT CAN BE PLACED IN A COLUMN
-- IT WILL ALLOW TO INSERT ONLY THOSE RECORDS WHERE CERTAIN CONDITION WILL MET

CREATE TABLE s6 (rno int PRIMARY KEY, uname varchar(30) NOT NULL , 
age INT NOT NULL CHECK (age>=18));

INSERT INTO s6 (rno , uname , age) VALUES (1,'John',22);
INSERT INTO s6 (rno , uname , age) VALUES (2,'Alex',18);
INSERT INTO s6 (rno , uname , age) VALUES (3,'Tina',17); -- 17>=18 (false)

-- MySQL AUTO Increment Field
-- IT ALLOWS A UNIQUE NUMBER TO BE GENERATED AUTOMATICALLY
-- WNENEVER A NEW RECORD IS INSERTED INTO A TABLE

CREATE TABLE product (sno INT PRIMARY KEY auto_increment, pname varchar(20));
INSERT INTO product (pname) VALUES ('Shoes');
INSERT INTO product (pname) VALUES ('Shirts');
INSERT INTO product (pname) VALUES ('Jeans');

SELECT * FROM product;