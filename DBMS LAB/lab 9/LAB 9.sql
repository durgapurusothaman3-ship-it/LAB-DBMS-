
USE CollegeDB;

-- Subquery using IN
SELECT StudentName
FROM Students
WHERE StudentID IN (
    SELECT StudentID
    FROM Courses
);

-- Subquery using ANY
SELECT StudentName
FROM Students
WHERE Age > ANY (
    SELECT Age
    FROM Students
    WHERE City = 'Chennai'
);

-- Subquery using ALL
SELECT StudentName
FROM Students
WHERE Age > ALL (
    SELECT Age
    FROM Students
    WHERE City = 'Delhi'
);

-- Subquery using EXISTS
SELECT s.StudentName
FROM Students s
WHERE EXISTS (
    SELECT 1
    FROM Courses c
    WHERE s.StudentID = c.StudentID
);
