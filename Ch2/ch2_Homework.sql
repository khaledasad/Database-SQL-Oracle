--Khaled Asad
--08-30-2016


--ch2p1
SELECT DISTINCT s_class AS "Classification"
FROM STUDENT;

--ch2p2
SELECT employee_id AS "Emp#" , last_name ||', '|| first_name AS "Employee",
job_id AS "Job Title",hire_date AS "Date Hired"
FROM EMPLOYEES;

--ch2p3
SELECT f_first ||' '|| f_mi ||'. '||f_last||': '|| f_phone AS "Faculty Name: Phone"
FROM FACULTY;

--ch2p4
SELECT last_name|| q'<'s full salary is: >' AS "Employee", salary + NVL(commission_pct, 0) * 1000 AS "Full Salary" 
FROM EMPLOYEES;

--ch2p5
SELECT employee_id AS "Employee ID", start_date AS "Start Date", 
end_date AS  "End_date", end_date - start_date AS "Days of employement"
FROM JOB_HISTORY
ORDER BY 4;

--ch2p6
SELECT 'The animal''s name is: ' || animal_name||', '|| breed_id AS " Animal Name and Breed"
FROM ANIMAL
WHERE animal_age > 4 
ORDER BY 1;

