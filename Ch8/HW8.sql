--Khaled Asad
--10-15-2016



--Ch8p1
SELECT DISTINCT s_id, s_first ||' '|| s_last AS "Enrolled Student"
FROM  student
WHERE s_id  IN  (SELECT s_id
                FROM enrollment);

--Ch8p2
SELECT employee_id ,first_name, last_name, salary
FROM employees e JOIN departments d
ON(e.department_id = d.department_id)
JOIN locations l
ON(d.location_id = l.location_id)
WHERE salary >(SELECT AVG(salary)
              FROM employees)
              AND(l.city LIKE '%San Francisco')
ORDER BY salary DESC;
               
--Ch8p3
SELECT last_name,department_id, salary
FROM employees
WHERE (department_id,salary) IN (SELECT department_id, AVG(salary)
                                FROM employees
                                GROUP BY department_id);
                                
--Ch8p4
SELECT last_name ,job_id, salary AS "TOTAL SAL"
FROM employees
WHERE salary > ANY(SELECT salary
                  FROM employees
                  WHERE job_id LIKE '%MGR%'
                  OR job_id LIKE '%MAN%')
                  AND job_id LIKE 'SA_REP'
                  ORDER BY "TOTAL SAL";
                  
--Ch8p5
SELECT last_name, hire_date
FROM employees
WHERE department_id IN(SELECT department_id
                    FROM employees
                    WHERE last_name LIKE '&&LASTNAME_ENTER')
                    AND last_name NOT LIKE '&&LASTNAME_ENTER'
                    ORDER BY 1;
UNDEFINE LASTNAME_ENTER;

--Ch8p6
SELECT department_id,last_name,job_id
FROM employees
WHERE department_id  = (SELECT department_id
                          FROM departments
                          WHERE department_name LIKE 'Executive%');
--Ch8p6
SELECT animal_id,animal_name, animal_age
FROM animal
WHERE animal_age > (SELECT AVG(animal_age)
                      FROM animal);




            