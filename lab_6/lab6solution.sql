-- =========================================
-- DB LAB–6 : GROUP BY AND HAVING
-- =========================================


-- =========================================
-- BASIC AGGREGATE QUERIES
-- =========================================

SELECT COUNT(*) AS Total_Students
FROM Student;

SELECT COUNT(*) AS Total_Faculty
FROM Faculty;

SELECT COUNT(*) AS Total_Courses
FROM Course;

SELECT MAX(credits) AS Maximum_Credits
FROM Course;

SELECT MIN(credits) AS Minimum_Credits
FROM Course;


-- =========================================
-- GROUP BY ON SINGLE TABLES
-- =========================================

SELECT DEPARTMENT_ID, COUNT(*) AS Total_Students
FROM Student
GROUP BY DEPARTMENT_ID;

SELECT DEPARTMENT_ID, COUNT(*) AS Total_Faculty
FROM Faculty
GROUP BY DEPARTMENT_ID;

SELECT DEPARTMENT_ID, COUNT(*) AS Total_Courses
FROM Course
GROUP BY DEPARTMENT_ID;

SELECT semester, COUNT(*) AS Total_Enrollments
FROM Enrollment
GROUP BY semester;

SELECT grade, COUNT(*) AS Total_Students
FROM Enrollment
GROUP BY grade;


-- =========================================
-- GROUP BY WITH HAVING
-- =========================================

SELECT DEPARTMENT_ID, COUNT(*) AS Total_Students
FROM Student
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) > 3;

SELECT semester, COUNT(*) AS Total_Enrollments
FROM Enrollment
GROUP BY semester
HAVING COUNT(*) > 2;

SELECT grade, COUNT(*) AS Total_Students
FROM Enrollment
GROUP BY grade
HAVING COUNT(*) > 1;

SELECT DEPARTMENT_ID, COUNT(*) AS Total_Courses
FROM Course
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) > 1;


-- =========================================
-- AGGREGATION WITH JOIN
-- =========================================

SELECT course_id, COUNT(student_id) AS Enrolled_Students
FROM Enrollment
GROUP BY course_id;

SELECT C.course_name, COUNT(E.student_id) AS Enrolled_Students
FROM Course C
INNER JOIN Enrollment E
ON C.course_id = E.course_id
GROUP BY C.course_name;

SELECT D.DEPARTMENT_ID, COUNT(S.student_id) AS Total_Students
FROM Department D
INNER JOIN Student S
ON D.DEPARTMENT_ID = S.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_ID;

SELECT F.name, COUNT(C.course_id) AS Total_Courses
FROM Faculty F
INNER JOIN Course C
ON F.faculty_id = C.faculty_id
GROUP BY F.name;


-- =========================================
-- ANALYTICAL QUERIES
-- =========================================

SELECT C.course_name, MAX(E.grade) AS Maximum_Grade
FROM Course C
INNER JOIN Enrollment E
ON C.course_id = E.course_id
GROUP BY C.course_name;

SELECT DEPARTMENT_ID, COUNT(course_id) AS Total_Courses
FROM Course
GROUP BY DEPARTMENT_ID;

SELECT semester, COUNT(student_id) AS Total_Students
FROM Enrollment
GROUP BY semester;

SELECT C.course_name, COUNT(E.student_id) AS Enrolled_Students
FROM Course C
INNER JOIN Enrollment E
ON C.course_id = E.course_id
GROUP BY C.course_name
HAVING COUNT(E.student_id) > 2;

-- =========================================
-- END OF LAB–6
-- =========================================