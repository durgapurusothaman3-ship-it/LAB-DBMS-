USE CollegeDB;

-- Create Courses Table

CREATE TABLE Courses (
    CourseID INT,
    StudentID INT,
    CourseName VARCHAR(50)
);DROP TABLE IF EXISTS Courses;


-- Insert Records
INSERT INTO Courses VALUES
(101, 1, 'DBMS'),
(102, 2, 'Python'),
(103, 4, 'Java');

DESC Students;
DESC Courses;
USE CollegeDB;

-- INNER JOIN
SELECT s.Name, c.CourseName
FROM Students s
INNER JOIN Courses c
ON s.StudentID = c.StudentID;

-- LEFT JOIN
SELECT s.Name, c.CourseName
FROM Students s
LEFT JOIN Courses c
ON s.StudentID = c.StudentID;

-- RIGHT JOIN
SELECT s.Name, c.CourseName
FROM Students s
RIGHT JOIN Courses c
ON s.StudentID = c.StudentID;

-- FULL OUTER JOIN (MySQL Alternative)
SELECT s.Name, c.CourseName
FROM Students s
LEFT JOIN Courses c
ON s.StudentID = c.StudentID

UNION

SELECT s.Name, c.CourseName
FROM Students s
RIGHT JOIN Courses c
ON s.StudentID = c.StudentID;