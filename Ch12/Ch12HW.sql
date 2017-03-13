--Khaled Asad
--11/26/2016


--ch12p1
CREATE VIEW employees_vu 
AS SELECT employee_id, last_name employee, department_id
FROM employees;

--ch12p2
SELECT * FROM employees_vu; --//works

--ch12p3
SELECT employee , department_id -- i have 107 vs 20 
FROM employees_vu; 

--ch12p4
CREATE VIEW DEPT50 AS
SELECT employee_id empno, last_name employee, department_id deptno
FrOM employees
WHERE department_id = 50
WITH CHECK OPTION CONSTRAINT emp_DEPT_50; 

--ch12p5
DESC dept50 SELECT * FROM dept50; 

--ch12p6
UPDATE dept50 SET deptno = 80 --error allready used :/
WHERE empno = 143;
--= 'Matos'; 

 
--ch12 add table
--CREATE TABLE dept11
 --(d_num   NUMBER(7),
 -- d_name VARCHAR2(25),
 -- CONSTRAINT dept11_d_num_pk PRIMARY KEY (d_num));
--INSERT INTO dept11
 -- SELECT  department_id, department_name
  --FROM    departments;
  
  
--ch12p7
CREATE SEQUENCE dept11_seq
START WITH 300 INCREMENT BY 10 MAXVALUE 1000; 
 

--ch12p8 
INSERT INTO dept11 VALUES (dept11_seq.nextval, 'Education');
INSERT INTO dept11 VALUES (dept11_seq.nextval, 'Administration'); 

--ch12p9
CREATE INDEX d11_name_idx ON dept11(D_name); 

--ch12p10
CREATE SYNONYM emp12 FOR employees; 
--ch12p11

