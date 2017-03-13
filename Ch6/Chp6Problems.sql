--Khaled Asad
--9/29/2016


--ch6p1
SELECT job_id AS "Job",TO_CHAR(MAX(salary),'$999,999') AS "Maximum",TO_CHAR(MIN(salary),'$999,999') AS "Minimum"
,TO_CHAR(SUM(salary),'$999,999') AS "Total",COUNT(salary) AS "Number"
FROM employees
GROUP BY job_id
ORDER BY 5,1;


--ch6p2
SELECT department_id AS "Department", (MAX(salary)-MIN(salary)) AS "Difference"
FROM employees
GROUP BY department_id
HAVING (MAX(salary)-MIN(salary)) !=0
ORDER BY department_id;


--ch6p3
SELECT manager_id AS "Manager", MIN(salary) AS "Small Sal"
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id 
HAVING MIN(salary) > 1000
ORDER BY 2 DESC;

--ch6p4
SELECT c_sec_day AS "Days" , COUNT(c_sec_day) AS " Number of Classe"
FROM course_section
GROUP BY c_sec_day;

--ch6p5
SELECT  c_sec_day AS "Days", TO_CHAR(c_sec_time, 'HH:MI PM') AS "Time", 
COUNT(c_sec_day) AS " Number of Classe"
FROM course_section
GROUP BY c_sec_day, c_sec_time
ORDER BY 1;


--ch6p6
SELECT 
CASE 
WHEN c_sec_day = 'MTWRF' THEN 'Evry Day of the week'
WHEN c_sec_day = 'MWF' THEN 'Mon - Wed - Fri'
WHEN c_sec_day = 'TR' THEN 'Tues - Thurs'
ELSE 'Invalid day'
END AS "Days",
TO_CHAR(c_sec_time, 'fmHH:fmMI AM') AS "Time", 
COUNT(c_sec_day) AS " Number of Classe"
FROM course_section
GROUP BY c_sec_day,c_sec_time
ORDER BY 1;


--ch6p7
SELECT animal_id,animal_name AS "Animal Name",MAX(animal_weight) AS "Large Animal"
FROM animal
WHERE animal_id IS NOT NULL
GROUP BY animal_id,animal_name
HAVING MAX(animal_weight) > 34
ORDER BY 1;








