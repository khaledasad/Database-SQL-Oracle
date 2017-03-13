--Top Car Build Database
--Khaled Asad
--11/1/2016


------------------------------DROPING TABLES------------------------------------

DROP TABLE Customer_id CASCADE CONSTRAINTS;
DROP TABLE Online_Order_id CASCADE CONSTRAINTS;
DROP TABLE Custom_Build_id CASCADE CONSTRAINTS;
DROP TABLE Interior_id CASCADE CONSTRAINTS;
DROP TABLE Engine_id CASCADE CONSTRAINTS;
DROP TABLE Tires_id CASCADE CONSTRAINTS;
DROP TABLE Body_id CASCADE CONSTRAINTS;
DROP TABLE Wheels_id CASCADE CONSTRAINTS;


CREATE TABLE Customer_id(
customer_id number,
first_name varchar(25),
last_name varchar(25),
phone varchar2(35),
street varchar(50),
city varchar(50),
state varchar(50),
zip number,
CONSTRAINT Customer_id_customer_id_pk
PRIMARY KEY (customer_id)
);

CREATE TABLE Interior_id(
interior_id number,
interior_type varchar(25),
color varchar(25),
navigation varchar(3),
heated_seats varchar(50),
power_seats varchar(50),
seating_capacity varchar(50),
premium_sound_system varchar(50),
CONSTRAINT Interior_id_interior_id_pk
PRIMARY KEY (interior_id)
);


CREATE TABLE Engine_id(
engine_id number,
base_engine varchar(25),
cylinders number,
drive_type varchar(25),
fuel_capacity varchar(50),
fuel_type varchar(50),
horsepower number,
transmission varchar(50),
CONSTRAINT Engine_id_engine_id_pk
PRIMARY KEY (engine_id)
);

CREATE TABLE Tires_id(
tires_id number,
tire_size number,
brand varchar(25),
seasonal varchar(25),
racing varchar(50),
CONSTRAINT Tires_id_tires_id_pk
PRIMARY KEY (tires_id)
);

CREATE TABLE Body_id(
body_id number,
spoiler varchar(25),
raised varchar(25),
color varchar(15),
hood varchar(50),
door varchar(50),
roof varchar(50),
lighting varchar(50),
CONSTRAINT Body_id_body_id_pk
PRIMARY KEY (body_id)
);

CREATE TABLE Wheels_id(
wheels_id number,
wheel_size number,
color varchar(25),
brand varchar(25),
metal varchar(50),
CONSTRAINT Wheels_id_wheels_id_pk
PRIMARY KEY (wheels_id)
);

CREATE TABLE Custom_Build_id(
custom_build_id number,
price number,
interior_id number,
body_id number,
wheels_id number,
engine_id number,
tires_id number,
CONSTRAINT Custom_Build_id_C_B_pk
PRIMARY KEY (custom_build_id),
CONSTRAINT Custom_Build_id_interior_id_fk FOREIGN KEY (interior_id) REFERENCES Interior_id,
CONSTRAINT Custom_Build_id_body_id_fk FOREIGN KEY (body_id) REFERENCES Body_id,
CONSTRAINT Custom_Build_id_wheels_id_fk FOREIGN KEY (wheels_id) REFERENCES Wheels_id,
CONSTRAINT Custom_Build_id_engine_id_fk FOREIGN KEY (engine_id) REFERENCES Engine_id,
CONSTRAINT Custom_Build_id_tires_id_fk FOREIGN KEY (tires_id) REFERENCES Tires_id
);

CREATE TABLE Online_Order_id(
customer_id number,
custom_build_id number,
CONSTRAINT Online_Order_id_fk FOREIGN KEY (customer_id) REFERENCES Customer_id,
CONSTRAINT Online_Custom_build_id_fk FOREIGN KEY (custom_build_id) REFERENCES Custom_Build_id
);


------------------------------INPUT INFORMATION---------------------------------

--INSERT VALUES Customer_id
INSERT INTO Customer_id VALUES
(1,'Khaled','Asad','404-988-2444','3759 Rosecliff','Buford','Georgia',30519);

INSERT INTO Customer_id VALUES
(2,'Anissa','Logan','404-918-0831','1225 Sable Xing','Suwanee','Colorado',30024);

INSERT INTO Customer_id VALUES
(3,'Marija','Ciganovic','404-410-4444','44 Ciganovic','Donji Srb','Texas',30017);

INSERT INTO Customer_id VALUES
(4,'Robert','Bryan','477-888-2525','10 Perfectoo','Decula','Georgia',30019);

INSERT INTO Customer_id VALUES
(5,'Boby','Whilis','770-224-5689','5431 Sparkling Rd','New York','New York',32478);

--INSERT VALUES Interior
INSERT INTO Interior_id VALUES
(1,'Leather','Brown','No','Front Headted','Yes',5,'Sony Premium Sound');

INSERT INTO Interior_id VALUES
(23,'Micro Fiber','Black','Yes','Front and Rear Headted','Yes',5,'Bose Premium Sound');

INSERT INTO Interior_id VALUES
(67,'Leather','White','Yes','Rear Headted','Yes',4,'Beats Premium Sound');

INSERT INTO Interior_id VALUES
(99,'Polyester','Gray','No','None','No',5,'None');

INSERT INTO Interior_id VALUES
(72,'Leather','Brown','Yes','None','No',4,'JBL Premium Sound');

--INSERT VALUES Engine
INSERT INTO Engine_id VALUES
(1,'Yes',6,'Normal','17 Gal','Gasoline',288,'Automatic');

INSERT INTO Engine_id VALUES
(55,'No',4,'Normal','17 Gal','Gasoline',122,'Manual');

INSERT INTO Engine_id VALUES
(89,'Yes',6,'Sport','22 Gal','Gasoline',322,'Automatic');

INSERT INTO Engine_id VALUES
(74,'Yes',12,'Sport','25 Gal','Gasoline',488,'Automatic');

INSERT INTO Engine_id VALUES
(10,'Yes',8,'Normal','25 Gal','Diesel',455,'Automatic');


--INSERT VALUES Tires
INSERT INTO Tires_id VALUES
(1,22,'Heat','Summer','No');

INSERT INTO Tires_id VALUES
(4458,19,'Stone','Winter','No');

INSERT INTO Tires_id VALUES
(435,18,'Yamaha','Summer','Yes');

INSERT INTO Tires_id VALUES
(425,21,'Genral','Summer','No');

INSERT INTO Tires_id VALUES
(415,21,'Stone','Summer','Yes');


--INSERT VALUES Body
INSERT INTO Body_id VALUES
(1,'Yes','No','Black','Regualr','Regular','Regular','None');

INSERT INTO Body_id VALUES
(23,'No','No','Red','Carbon Fiber','Fox','Carbon Fiber','Red');

INSERT INTO Body_id VALUES
(24,'No','Yes','Yellow','Defender','Regular','Regular','None');

INSERT INTO Body_id VALUES
(25,'No','No','Blue','Regualr','Regular','Regular','None');

INSERT INTO Body_id VALUES
(26,'No','No','Gray','Regualr','Regular','Regular','None');


--INSERT VALUES Wheels
INSERT INTO Wheels_id VALUES
(1,19,'Gray','TopStar','Alloy');

INSERT INTO Wheels_id VALUES
(11,18,'Black','Hard','Steal');

INSERT INTO Wheels_id VALUES
(111,21,'Gray','Bold Eagle','Alloy');

INSERT INTO Wheels_id VALUES
(1111,19,'Gray','TopStar','Steal');

INSERT INTO Wheels_id VALUES
(11111,19,'Red','Heat','Steal');


--INSERT VALUES Custom_build
INSERT INTO Custom_Build_id VALUES
(11,20000,1,1,1,1,1);
INSERT INTO Custom_Build_id VALUES
(22,45000,23,23,1111,55,4458);
INSERT INTO Custom_Build_id VALUES
(33,28000,99,26,111,10,435);
INSERT INTO Custom_Build_id VALUES
(44,37600,72,25,11,89,425);
INSERT INTO Custom_Build_id VALUES
(55,568720,67,24,11111,74,415);


--INSERT VALUES Online_order-id
INSERT INTO Online_Order_id VALUES
(1,22);
INSERT INTO Online_Order_id VALUES
(2,44);
INSERT INTO Online_Order_id VALUES
(3,11);
INSERT INTO Online_Order_id VALUES
(4,55);
INSERT INTO Online_Order_id VALUES
(5,33);

COMMIT;


SELECT * FROM Customer_id;
SELECT * FROM CUSTOM_BUILD_ID;
Select * FROM ONLINE_ORDER_ID;
Select * From WHEELS_ID;


