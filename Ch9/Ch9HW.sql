--Khaled Asad
--11/15/2016


--ch9p1
SELECT department_id AS"DEPARTMENT_ID"
FROM departments
MINUS (SELECT department_id FROM employees WHERE job_id = '%ST%'); 

--ch9p2
SELECT country_id AS "Country ID"  , country_name AS "Name"
FROM countries
MINUS (SELECT UNIQUE country_id, country_name FROM countries NATURAL JOIN departments NATURAL JOIN locations); 

--ch9p3
SELECT UNIQUE job_id, department_id FROM employees WHERE department_id = 10 
UNION ALL SELECT UNIQUE job_id, department_id FROM employees WHERE department_id = 50
UNION ALL SELECT UNIQUE job_id, department_id FROM employees WHERE department_id = 20;

--ch9p4
SELECT employee_id AS "EMPLOYEE_ID" ,job_id AS"JOB_ID"
FROM job_history
INTERSECT(SELECT employee_id,job_id
FROM employees); 

--ch9p5
SELECT last_name AS "LAST_NAME", department_id AS "DEPARTMENT_ID" ,TO_CHAR(NULL)
FROM employees
UNION 
(SELECT TO_CHAR(null),department_id,department_name FROM departments);
 

--ch9p6
SELECT animal_name AS "NAME", breed_id AS "BREED" ,TO_CHAR(null)
FROM animal
UNION
(SELECT TO_CHAR(null),breed_id,breed_type
FROM breed)
ORDER BY 2;



