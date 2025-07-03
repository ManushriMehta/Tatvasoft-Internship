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

SELECT * from student where id = 6

UPDATE Student
SET FirstName = 'raj'
WHERE ID = 5;

CREATE TABLE Student2 (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Email VARCHAR(100) UNIQUE
);

INSERT INTO Student2 (StudentID, FirstName, LastName, DateOfBirth, Email)
VALUES
  ('7','Ananya', 'Joshi', '2005-05-10', 'ananya.joshi@example.com'),
  ('8','Ravi', 'Kapoor', '2004-12-22', 'ravi.kapoor@example.com'),
  ('9','Meera', 'Nair', '2006-03-18', 'meera.nair@example.com'),
  ('10','Vikram', 'Chauhan', '2005-09-03', 'vikram.chauhan@example.com'),
  ('11','Tanvi', 'Deshmukh', '2003-11-27', 'tanvi.deshmukh@example.com');

select * from student2;

select * from student2 order by FirstName;

select * from student2 order by FirstName DESC;

select * from student2 where Firstname LIKE '%i';

-- Join
--inner join : Returns only rows that have matching values in both tables.
SELECT * FROM student AS s1 INNER JOIN student2 AS s2 ON s1.id = s2.studentid;

-- left outer join : Returns all rows from the left table, and the matching rows from the right table.
SELECT * FROM student AS s1 LEFT OUTER JOIN student2 AS s2 ON s1.id = s2.studentid;
SELECT * FROM student AS s1 LEFT JOIN student2 AS s2 ON s1.id = s2.studentid;

--right join : Returns all rows from the right table, and the matching rows from the left table.
SELECT * FROM student AS s1 Right Join student2 AS s2 ON s1.id = s2.studentid;.

--full join/ full outer join : Returns all rows from both tables.
SELECT * FROM student AS s1 Full JOIN student2 AS s2 ON s1.id = s2.studentid;

--Aggregation with group by
SELECT FirstName, COUNT(*) AS total FROM Student GROUP BY FirstName;

--group by having
SELECT EXTRACT(YEAR FROM DateOfBirth) AS BirthYear, COUNT(*) AS Total FROM Student2 GROUP BY BirthYear HAVING COUNT(*) > 2;


