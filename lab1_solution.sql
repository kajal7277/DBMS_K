-- Part A: DDL

CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Student (
    RollNo INT,
    Name VARCHAR(50),
    Dept VARCHAR(20),
    Age INT,
    Phone VARCHAR(15)
);

CREATE TABLE Course (
    CourseID INT,
    CourseName VARCHAR(50),
    Credits INT
);

ALTER TABLE Student ADD City VARCHAR(30);
ALTER TABLE Student ADD Semester INT;
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;

DROP TABLE Course;

-- Part B: DML

INSERT INTO Student VALUES
(101, 'Rahul', 'CSE', 20, '9876543210', 'Delhi', 3),
(102, 'Anita', 'ECE', 21, '9123456780', 'Patna', 4),
(103, 'Rohit', 'CSE', 22, '9012345678', 'Ranchi', 5),
(104, 'Priya', 'ME', 19, '9988776655', 'Kolkata', 2),
(105, 'Aman', 'CE', 23, '8899776655', 'Patna', 6);

SELECT * FROM Student;
SELECT RollNo, Name FROM Student;
SELECT * FROM Student WHERE Dept = 'CSE';
SELECT * FROM Student WHERE Age > 20;

UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;
UPDATE Student SET City = 'Patna' WHERE Name = 'Rahul';
UPDATE Student SET Age = Age + 1;

DELETE FROM Student WHERE RollNo = 105;
DELETE FROM Student;
