-- Database: Demo1

-- DROP DATABASE IF EXISTS "Demo1";

CREATE DATABASE "Demo1"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_India.1252'
    LC_CTYPE = 'English_India.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

--We created out first Database

--Creating table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Email VARCHAR(100) UNIQUE
);

-- insterting data into table
INSERT INTO Student (StudentID, FirstName, LastName, DateOfBirth, Email)
VALUES
  ('1','Aarav', 'Sharma', '2005-08-12', 'aarav.sharma@example.com'),
  ('2','Diya', 'Patel', '2004-03-25', 'diya.patel@example.com'),
  ('3','Rahul', 'Verma', '2006-01-18', 'rahul.verma@example.com'),
  ('4','Sneha', 'Reddy', '2003-10-09', 'sneha.reddy@example.com'),
  ('5','Karan', 'Mehta', '2005-07-30', 'karan.mehta@example.com');

--View Table 
SELECT * FROM Student;

--Adding data of new student
INSERT INTO Student (StudentID, FirstName, LastName, DateOfBirth, Email)
VALUES ('6','Priya', 'Singh', '2004-09-17', 'priya.singh@example.com');

ALTER TABLE student RENAME COLUMN StudentID TO ID; 




