--Khaled Asad
--10/06/2016


--ch7p1
SELECT DISTINCT e.job_id, l.location_id, l.state_province
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
JOIN locations l
ON (d.location_id = l.location_id)
ORDER BY e.job_id;

--ch7p2
SELECT e.last_name AS "Employee", e.job_id AS "Job Tiltle", d.department_name AS "Department"
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
WHERE d.department_name  LIKE 'IT%'
ORDER BY 1;

--ch7p3
SELECT DISTINCT j.grade_level AS "Grade", department_name AS "Department", TO_CHAR(salary,'$999,999') AS "Salary"
FROM departments d JOIN  employees e
ON( d.department_id = e.department_id)
JOIN job_grades j 
ON e.salary
BETWEEN j.lowest_sal AND j.highest_sal
WHERE department_name LIKE 'S%'
ORDER BY 1,2,3 DESC;

--ch7p4
SELECT first_name "Upper", last_name "Management",
(CASE WHEN job_id LIKE '%_VP' THEN 'VICE PRESIDENT'
  WHEN job_id LIKE '%_PRES' THEN 'PRESIDENT'
  ELSE '' END) AS "Job Title"
  FROM employees
WHERE department_id = 90
ORDER BY 1;

--ch7p5
SELECT l.city AS "City", c.country_name AS "Country"
FROM locations l RIGHT OUTER JOIN co
ON (c.country_id = l.country_id);

--ch7p6
SELECT f.f_last AS "FACULTY",c.sec_num AS "Section", c.loc_id AS "LOC ID BUILDING", l.bldg_code AS "BUILDING"
FROM  faculty f  JOIN  course_section c 
ON (f.f_id = c.f_id) 
JOIN location l
ON ( c.loc_id = l.loc_id)
WHERE l.bldg_code LIKE 'BUS%'
ORDER BY 1,2;

--ch7p7
SELECT  e.last_name AS "Employees", 
TO_CHAR(e.hire_date, 'MM/DD/RR') AS "Emp Hired",
m.last_name AS "Manager",
TO_CHAR(m.hire_date,'MM/DD/RR') AS "Manager Hired"
FROM employees e JOIN employees m ON(e.manager_id= m.employee_id)
WHERE e.hire_date < m.hire_date AND (e.hire_date LIKE '%-%-00' 
AND m.hire_date LIKE '%-%-00');

--ch7p8
SELECT DISTINCT a.animal_name AS "Name", a.breed_id AS "Breed",b.breed_type AS "Breed Type"
FROM animal a JOIN breed b
ON (a.breed_id = b.breed_id)
WHERE a.breed_id > 2 AND b.breed_type LIKE 'd%'
ORDER BY 2;