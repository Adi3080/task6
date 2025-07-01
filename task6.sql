
--task6
-- 1. Select each student's name, marks, and the highest marks in the whole student table
-- (This uses a scalar subquery inside the SELECT clause)
SELECT 
    s_name,
    marks,
    (SELECT MAX(marks) FROM student) AS highest_marks
FROM student;


-- 2. Select student names who belong to departments that have more than one student
-- (This uses a subquery with IN and GROUP BY + HAVING)
SELECT s_name
FROM student
WHERE department IN (
    SELECT department
    FROM student
    GROUP BY department
    HAVING COUNT(*) > 1
);


-- 3. Select names and departments of students from departments
-- where at least one student has scored more than 85 marks
-- (This uses a correlated subquery with EXISTS)
SELECT s1.s_name, s1.department
FROM student s1
WHERE EXISTS (
    SELECT 1
    FROM student s2
    WHERE s2.department = s1.department AND s2.marks > 85
);


-- 4. Select names, departments, and marks of students whose marks
-- are greater than the average marks of their own department
-- (This uses a correlated subquery in the WHERE clause)
SELECT s1.s_name, s1.department, s1.marks
FROM student s1
WHERE s1.marks > (
    SELECT AVG(s2.marks)
    FROM student s2
    WHERE s1.department = s2.department
);
