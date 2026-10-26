USE CollegeDB;

-- 1. Query before indexing
SELECT *
FROM Students
WHERE Name = 'Durga';

-- 2. Create index on Name column
CREATE INDEX idx_name
ON Students(Name);

-- 3. Query after indexing
SELECT *
FROM Students
WHERE Name = 'Durga';

-- 4. View execution plan
EXPLAIN
SELECT *
FROM Students
WHERE Name = 'Durga';

-- 5. Drop index (optional)
DROP INDEX idx_name
ON Students;