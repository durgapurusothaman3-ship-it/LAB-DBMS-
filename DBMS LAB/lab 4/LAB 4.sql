USE CollegeDB;
DROP TABLE Students;
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

SELECT Name,City
FROM Students
WHERE Age>20;




