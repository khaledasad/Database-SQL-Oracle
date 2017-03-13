--Khaled Asad
--09/11/2016


--cp4p1
SELECT  SYSDATE AS "Date"
FROM dual;
--Ch4p2
SELECT employee_id,last_name,salary,NVL(((salary*.155)+salary),0)
AS "New Salary"
FROM employees
ORDER BY 1;--cant get same pic ??
--Ch4p3
SELECT employee_id,last_name,salary,NVL(((salary*.155)+salary),0)
AS "New Salary",
NVL(((salary*.155)+salary),0)-salary AS "Increase"
FROM employees;--old - new
--Ch4p4
SELECT INITCAP(last_name) AS "Name",LENGTH(last_name) AS "Length"
FROM employees
WHERE last_name LIKE 'A%' OR last_name LIKE 'J%' OR last_name LIKE 'M%'
ORDER BY 1;--have to say last_name evry time before u call or or 
--Ch4p5
SELECT INITCAP(last_name) AS "Name",LENGTH(last_name) AS "Length"
FROM employees
WHERE last_name 
LIKE UPPER ('&capital%')
ORDER BY 1;

--Ch4p6
SELECT last_name,ROUND(MONTHS_BETWEEN(SYSDATE,hire_date),0)AS months_worked
FROM employees
ORDER BY 2;--not same as pic :/ i dont know what im doing wrong 

--Ch4p7
SELECT last_name,LPAD(salary,15,'$') AS "SALARY"
FROM employees;

--Ch4p8
SELECT SUBSTR(last_name,1,8)||'   '||LPAD('*',ROUND(salary/1000),'*') AS "EMPLOYEES_AND_THEIR_SALARIES"
FROM employees
ORDER BY LENGTH(LPAD('*',ROUND(salary/1000),'*'))DESC;--have the comand in order by instead from
--Ch4p9
--same as example in class to get year or month or day 
SELECT last_name,TRUNC((MONTHS_BETWEEN(SYSDATE,hire_date)/12*52),0) AS "TENURE"
FROM employees
WHERE department_id=90
ORDER  BY TRUNC((MONTHS_BETWEEN(SYSDATE,hire_date)/12*52),0)DESC;-- i coud not get it sam as picture but this is the closesest :/

--Ch4p10 
SELECT animal_name,ROUND((MONTHS_BETWEEN(SYSDATE,arrival_date)/12*52),0)AS "ROUND TIME(WEEKS)"
FROM animal
WHERE animal_id=5
ORDER BY ROUND((MONTHS_BETWEEN(SYSDATE,arrival_date)/12*52),0)ASC;





