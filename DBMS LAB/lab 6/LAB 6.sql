USE CollegeDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT,
    City VARCHAR(50)
);

INSERT INTO Students (StudentID, Name, Email, Age, City)
VALUES
(1, 'Durga', 'durga@gmail.com', 20, 'Chennai'),
(2, 'Devi', 'devi@gmail.com', 21, 'Delhi'),
(3, 'Varshini', 'varsh@gmail.com', 22, 'Mumbai');

SELECT * FROM Students;

UPDATE Students
SET City = 'Bangalore'
WHERE StudentID = 2;

SELECT * FROM Students;

DELETE FROM Students
WHERE StudentID = 3;

SELECT * FROM Students;

SELECT COUNT(*) AS TotalStudents
FROM Students;

SELECT SUM(Age) AS TotalAge
FROM Students;

SELECT AVG(Age) AS AverageAge
FROM Students;

SELECT MIN(Age) AS MinimumAge
FROM Students;

SELECT MAX(Age) AS MaximumAge
FROM Students;
