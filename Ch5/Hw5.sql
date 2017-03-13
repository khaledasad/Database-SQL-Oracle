--Khaled Asad 
--09/21/2016


--Ch5p1
SELECT last_name||'earns '||TO_CHAR(salary, 'fm$99,999.00') ||' monthly but wants '||
TO_CHAR((3*salary),'fm$99,999.00')
AS "Dream Salary"
FROM employees;

--Ch5p2
SELECT last_name AS "LAST_NAME", hire_date AS "HIRE_DATE",
TO_CHAR(NEXT_DAY(ADD_MONTHS(hire_date, 6),'Monday'),'fmDay", the "fmDdTHSP "of "fmMonth", "fmYYYY')
FROM employees;

--Ch5p3
SELECT last_name AS "LAST_NAME", hire_date AS "HIRE_DATE", TO_CHAR(hire_date, 'DAY')AS "DAY"
FROM employees
ORDER BY TO_CHAR(hire_date, 'D');

--Ch5p4
SELECT last_name, 
CASE TO_CHAR(NVL2(commission_pct,commission_pct,0)) 
WHEN '0' THEN 'No Commission'
ELSE TO_CHAR(commission_pct)
END AS "COOM"
FROM employees;

--Ch5p5
SELECT job_id AS "JOB_ID",
DECODE(job_id,
'AD_PRES', 'A',
'ST_MAN', 'B',
'IT_PROG', 'C',
'SA_REP', 'D',
'ST_CLERK', 'E', '0')
 AS "Grade"
FROM employees;

--Ch5p6
SELECT job_id AS "JOB_ID",
CASE job_id
WHEN 'AD_PRES' THEN 'A'
WHEN 'ST_MAN' THEN 'B'
WHEN 'IT_PROG' THEN 'C'
WHEN 'SA_REP' THEN 'D'
WHEN 'ST_CLERK' THEN 'E'

ELSE'0'
END AS "GRADE"
FROM employees;

--Ch5p7
SELECT bldg_code AS "Building", room AS "Room", 
CASE WHEN capacity >  100 THEN 'Large' 
WHEN capacity > 30 AND capacity < 99 THEN 'Medium'
WHEN capacity < 30 THEN 'Small'
END  AS "Capacity"
FROM location;

--Ch5p8
SELECT call_id AS "CALL ID", course_name AS "COURSE_NAME",CASE
WHEN call_id LIKE '%1__' THEN 'Freshman'
WHEN call_id LIKE '%2__' THEN 'Sophomore'
WHEN call_id LIKE '%3__' THEN 'Junior'
WHEN call_id LIKE '%4__' THEN 'Senior'
END 
AS "Level"
FROM course
ORDER BY 3,1;

--Ch5p9




