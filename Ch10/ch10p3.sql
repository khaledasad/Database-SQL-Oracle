--Khaled Asad
--11/08/2016

--ch10p3
SET ECHO OFF
SET VERIFY OFF
INSERT INTO my_employee VALUES
(&&e_id, '&&e_last_name', '&&e_first_name',
lower(substr('&e_first_name', 1, 1) 
||
substr('&e_last_name', 1, 7)),
&e_salary);
SET VERIFY ON SET ECHO ON
UNDEFINE e_first_name UNDEFINE e_last_name 

--ch10p4
--inserted 


--ch10p5
UPDATE my_employee
SET last_name = 'Drexler'
WHERE id = 3;

--ch10p6
UPDATE my_employee
SET salary = 1000
WHERE salary < 900;

--ch10p7
DELETE
FROM my_employee
WHERE last_name = 'Dancs'; 

--ch10p8
COMMIT;

--ch10p9
SET ECHO OFF
SET VERIFY OFF
INSERT INTO my_employee VALUES
(&&e_id, '&&e_last_name', '&&e_first_name',
lower(substr('&e_first_name', 1, 1) 
||
substr('&e_last_name', 1, 7)),
&e_salary);
SET VERIFY ON SET ECHO ON
UNDEFINE e_first_name UNDEFINE e_last_name 

--ch10p10
SAVEPOINT ch10p10;

--ch10p11
DELETE
FROM my_employee; 

--ch10p12
ROLLBACK TO ch10p10; 










