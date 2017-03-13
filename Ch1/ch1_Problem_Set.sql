--Khaled Asad
--August 23rd, 2016


--ch1p1
SELECT department_id, department_name
FROM departments
WHERE location_id <> 1700;

--ch1p2
SELECT employee_id, last_name, salary
FROM employees
WHERE department_id = 20;


--ch1p3
SELECT animal_id, animal_name, animal_age, animal_weight
FROM animal
WHERE animal_age <=3 AND animal_weight = 6;

--ch1p4
CREATE VIEW "Female Animals" AS
SELECT animal_id, animal_name, animal_age, animal_weight, animal_sex
FROM animal
WHERE animal_sex = 'F';

--TEST
SELECT * FROM "Female Animals";




