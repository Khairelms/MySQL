-- Insert and Select 
-- WHERE Clause
-- SELECT DISTINCT

-- INSERT INTO statement is used to insert new records in a table
-- SELECT statement is used to select data from a database table
-- WHERE Clause is used to filter the records
-- Select Distinct statement is used to return only distinct (different) values

USE db1;

SHOW TABLES;

-- Creating Table Using ChatGPT
-- CREATE MYSQL TABLE student using rollno, 
-- name, age, course, dob as field. 
-- make rollno as primary key and other fields as not null

-- insert 20 dummy records in above table

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    course VARCHAR(100) NOT NULL,
    dob DATE NOT NULL
);

INSERT INTO student (rollno, name, age, course, dob) VALUES
(1, 'Alice Johnson', 20, 'Computer Science', '2004-03-15'),
(2, 'Bob Smith', 21, 'Mechanical Engineering', '2003-11-22'),
(3, 'Charlie Davis', 19, 'Physics', '2005-06-09'),
(4, 'Diana Lopez', 22, 'Biotechnology', '2002-04-01'),
(5, 'Ethan Brown', 20, 'Electrical Engineering', '2004-01-13'),
(6, 'Fiona Clark', 21, 'Civil Engineering', '2003-08-24'),
(7, 'George Hall', 19, 'Mathematics', '2005-12-17'),
(8, 'Hannah Lewis', 20, 'Computer Science', '2004-07-07'),
(9, 'Ian Walker', 22, 'Physics', '2002-09-30'),
(10, 'Jenna Young', 21, 'Mechanical Engineering', '2003-02-10'),
(11, 'Kevin Scott', 20, 'Biotechnology', '2004-05-11'),
(12, 'Laura Adams', 19, 'Electrical Engineering', '2005-03-19'),
(13, 'Mike Baker', 21, 'Civil Engineering', '2003-06-05'),
(14, 'Nina Carter', 20, 'Mathematics', '2004-12-22'),
(15, 'Oscar Evans', 22, 'Computer Science', '2002-08-14'),
(16, 'Paula Foster', 19, 'Mechanical Engineering', '2005-11-02'),
(17, 'Quentin Green', 20, 'Biotechnology', '2004-10-10'),
(18, 'Rachel Harris', 21, 'Physics', '2003-01-27'),
(19, 'Steve Jackson', 20, 'Electrical Engineering', '2004-06-03'),
(20, 'Tina King', 22, 'Civil Engineering', '2002-07-21');

-- SELECT ALL RECORDS

SELECT * FROM student;

-- SELECT SPECIFIC COLUMNS

SELECT name, course FROM student;

-- SELECT SPECIFIC RECORDS

SELECT name, course FROM student WHERE course = 'Computer Science';

SELECT name, age FROM student WHERE age < 20;

-- LIMIT Clause
-- used to specify the number of records to return

SELECT * FROM student LIMIT 3;

SELECT name, course FROM student WHERE course = 'Computer Science' LIMIT 2;

-- OFFSET clause
-- OFFSET 3: This clause specifies that the query should skip the first 3 
-- rows before starting to return rows

SELECT * FROM student LIMIT 3 OFFSET 3;

-- SELECT DISTINCT

-- COUNT 

SELECT COUNT(course) FROM student;	-- 20 total no of course in recored

SELECT DISTINCT course FROM student;	-- detail unique course offer

SELECT COUNT(DISTINCT course) FROM student;	-- 7 total no of unique course offer

-- UPDATE Statement
-- used to update or modify the records of a table

SELECT * FROM student;

UPDATE student SET age = 23 WHERE name = 'Bob Smith';

SELECT * FROM student WHERE name = 'Bob Smith';

UPDATE student SET name = 'George Mathews',
course = 'Computer Science' WHERE rollno =7;

SELECT * FROM student;

-- DELETE Statement
-- used to delete an existing records from the table

DELETE FROM student WHERE name = 'Tina King';

-- UPDATE AND DELETE IS DANGEROUS TO USE
-- IF NOT WRITING THE QUERY PROPERLY