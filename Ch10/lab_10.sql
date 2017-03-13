--Khaled Asad
--11/08/2016

DROP TABLE my_employee;
CREATE TABLE my_employee
  (id  NUMBER(4) CONSTRAINT my_employee_id_nn NOT NULL,
   last_name VARCHAR2(25),
   first_name VARCHAR2(25),
   userid  VARCHAR2(8),
   salary  NUMBER(9,2));

--ch10p1
INSERT INTO my_employee VALUES(
1,'Patel','Ralph','rpatel',895
);
--ch10p2
INSERT INTO my_employee(id,last_name,first_name,userid,salary)
VALUES(
2,'Dancs','Betty','bdancs',860);
--ch10p3




