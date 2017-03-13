--Khaled Asad
--09/06/2016

--ch3p1
SELECT  last_name AS "Employee", salary AS "Salary"
FROM empoyees
WHERE salary NOT BETWEEN 2000 AND 9500;

--ch3p2
SELECT s_last AS "Student", s_dob AS "Date of Birth"
FROM student
WHERE s_dob BETWEEN '01-MAY-85' AND '30-SEP-85';

--ch3p3
SELECT bldg_code AS "BLDG_CODE", room AS "ROOM", capacity AS "CAPACIRY"
FROM location
WHERE capacity > 30 AND 
room < 200
ORDER BY 3;

--ch3p4
SELECT last_name AS "Name", job_id AS "Job Title"
FROM employees
WHERE (job_id LIKE '%_MAN' OR job_id LIKE '%_MGR') AND 
commission_pct IS NULL
ORDER BY 1;

--ch3p5
SELECT call_id AS "Call ID", course_name AS "Course Name"
FROM course
WHERE course_name LIKE '%_C++'
ORDER BY 1;

--ch3p6
SELECT s_first||' '||s_mi||'. '||s_last AS "Full Name", 
s_dob AS "Date of Birth", ROUND(((SYSDATE - s_dob)/365),2) AS "Age"
FROM student 
WHERE s_dob LIKE '%-%-86'
ORDER BY 2;

--ch3p7
SELECT last_name ||', '|| job_id AS "Employees", salary AS "Salary"
FROM employees 
WHERE salary BETWEEN &low_salary AND &high_salary
ORDER BY 1;

--ch3p8
SELECT department_id, &&extra_column
FROM departments
WHERE department_id > &input_user_id
ORDER BY  &extra_column;
UNDEFINE extra_column;

--ch3p9
SELECT animal_name, &&extra_column 
FROM animal
WHERE animal_age < &input_user_id
ORDER BY  &extra_column;
UNDEFINE extra_column;
