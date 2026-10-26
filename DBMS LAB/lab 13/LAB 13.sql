USE CollegeDB;

-- 1. Convert text to uppercase
SELECT UPPER(Name) AS UpperName
FROM Students;

-- 2. Convert text to lowercase
SELECT LOWER(City) AS LowerCity
FROM Students;

-- 3. Extract first 3 characters from Name
SELECT SUBSTR(Name, 1, 3) AS ShortName
FROM Students;

-- 4. Round average age to 2 decimal places
SELECT ROUND(AVG(Age), 2) AS RoundedAverageAge
FROM Students;

-- 5. Display current date and time
SELECT NOW();

-- 6. Add 5 days to current date and time
