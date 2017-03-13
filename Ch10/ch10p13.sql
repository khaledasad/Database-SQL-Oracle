--Khaled Asad
--11/08/2016

--ch10p13
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

