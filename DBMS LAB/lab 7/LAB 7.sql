USE CollegeDB;

DROP TABLE IF EXISTS Students;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    City VARCHAR(50)
);
INSERT INTO Students (StudentID, StudentName, City)
VALUES
(1, 'Arun', 'Chennai'),
(2, 'Priya', 'Madurai'),
(3, 'Kumar', 'Chennai'),
(4, 'Divya', 'Coimbatore'),
(5, 'Ravi', 'Madurai'),
(6, 'Meena', 'Chennai');

SELECT * FROM Students;

SELECT City, COUNT(*) AS TotalStudents
FROM Students
GROUP BY City
HAVING COUNT(*) > 1;
