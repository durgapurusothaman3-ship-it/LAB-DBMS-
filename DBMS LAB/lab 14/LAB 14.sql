USE CollegeDB;

-- 1. UNION (removes duplicates)
SELECT City FROM Students
UNION
SELECT DeptName FROM Department;


-- 2. UNION ALL (includes duplicates)
SELECT City FROM Students
UNION ALL
SELECT DeptName FROM Department;


-- 3. INTERSECT alternative (common records)
SELECT DISTINCT s.City
FROM Students s
INNER JOIN Department d
ON s.City = d.DeptName;


-- 4. MINUS / EXCEPT alternative
-- Cities in Students but not in Department
SELECT DISTINCT City
FROM Students
WHERE City NOT IN (
    SELECT DeptName
    FROM Department
);