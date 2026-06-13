# UNION in SQL

CREATE TABLE employees_north (
    emp_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    job_title VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE,
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    manager_id INT,
    status VARCHAR(20),
    bonus DECIMAL(10,2)
);

INSERT INTO employees_north VALUES
(1,'John','Smith','IT','Developer',65000,'2020-01-15','New York','NY','USA','john.smith@email.com','555-1001',101,'Active',5000),
(2,'Emma','Johnson','HR','Recruiter',55000,'2021-03-10','Boston','MA','USA','emma.j@email.com','555-1002',102,'Active',3000),
(3,'Liam','Brown','Finance','Analyst',62000,'2019-07-22','Chicago','IL','USA','liam.b@email.com','555-1003',103,'Active',4500),
(4,'Olivia','Davis','IT','Developer',68000,'2018-05-14','Seattle','WA','USA','olivia.d@email.com','555-1004',101,'Active',6000),
(5,'Noah','Wilson','Sales','Executive',58000,'2022-01-12','Dallas','TX','USA','noah.w@email.com','555-1005',104,'Active',7000),
(6,'Ava','Miller','Marketing','Specialist',53000,'2021-09-08','Miami','FL','USA','ava.m@email.com','555-1006',105,'Active',2500),
(7,'William','Moore','IT','Tester',50000,'2020-11-11','Denver','CO','USA','william.m@email.com','555-1007',101,'Active',2000),
(8,'Sophia','Taylor','HR','Coordinator',48000,'2022-04-17','Atlanta','GA','USA','sophia.t@email.com','555-1008',102,'Active',1500),
(9,'James','Anderson','Finance','Accountant',61000,'2019-06-30','Phoenix','AZ','USA','james.a@email.com','555-1009',103,'Active',4000),
(10,'Isabella','Thomas','Sales','Executive',59000,'2020-08-20','Houston','TX','USA','isabella.t@email.com','555-1010',104,'Active',6500),
(11,'Benjamin','Jackson','IT','Developer',72000,'2017-02-05','New York','NY','USA','ben.j@email.com','555-1011',101,'Active',8000),
(12,'Mia','White','Marketing','Manager',75000,'2016-10-15','Boston','MA','USA','mia.w@email.com','555-1012',105,'Active',9000),
(13,'Lucas','Harris','Sales','Executive',57000,'2021-12-01','Chicago','IL','USA','lucas.h@email.com','555-1013',104,'Active',5500),
(14,'Charlotte','Martin','HR','Recruiter',56000,'2020-05-19','Seattle','WA','USA','charlotte.m@email.com','555-1014',102,'Active',2800),
(15,'Henry','Thompson','Finance','Analyst',64000,'2018-09-25','Dallas','TX','USA','henry.t@email.com','555-1015',103,'Active',4700),
(16,'Amelia','Garcia','IT','Developer',69000,'2019-04-14','Miami','FL','USA','amelia.g@email.com','555-1016',101,'Active',6200),
(17,'Alexander','Martinez','Marketing','Specialist',52000,'2022-02-10','Denver','CO','USA','alex.m@email.com','555-1017',105,'Active',2300),
(18,'Harper','Robinson','Sales','Executive',60000,'2020-07-12','Atlanta','GA','USA','harper.r@email.com','555-1018',104,'Active',7200),
(19,'Michael','Clark','Finance','Accountant',61500,'2019-01-05','Phoenix','AZ','USA','michael.c@email.com','555-1019',103,'Active',4100),
(20,'Evelyn','Rodriguez','HR','Coordinator',49000,'2021-11-11','Houston','TX','USA','evelyn.r@email.com','555-1020',102,'Active',1800),
(21,'Daniel','Lewis','IT','Tester',51000,'2020-06-18','New York','NY','USA','daniel.l@email.com','555-1021',101,'Active',2100),
(22,'Abigail','Lee','Marketing','Specialist',54000,'2021-08-08','Boston','MA','USA','abigail.l@email.com','555-1022',105,'Active',2600),
(23,'Matthew','Walker','Sales','Executive',60500,'2022-03-03','Chicago','IL','USA','matthew.w@email.com','555-1023',104,'Active',7300),
(24,'Emily','Hall','Finance','Analyst',65000,'2018-12-12','Seattle','WA','USA','emily.h@email.com','555-1024',103,'Active',5000),
(25,'Joseph','Allen','IT','Developer',71000,'2017-07-21','Dallas','TX','USA','joseph.a@email.com','555-1025',101,'Active',7900),
(26,'Elizabeth','Young','HR','Recruiter',56500,'2020-03-17','Miami','FL','USA','elizabeth.y@email.com','555-1026',102,'Active',2900),
(27,'David','King','Marketing','Manager',77000,'2016-06-06','Denver','CO','USA','david.k@email.com','555-1027',105,'Active',9500),
(28,'Sofia','Wright','Sales','Executive',61000,'2021-01-25','Atlanta','GA','USA','sofia.w@email.com','555-1028',104,'Active',7400),
(29,'Andrew','Scott','Finance','Accountant',62000,'2019-10-10','Phoenix','AZ','USA','andrew.s@email.com','555-1029',103,'Active',4200),
(30,'Ella','Green','IT','Developer',70000,'2018-08-28','Houston','TX','USA','ella.g@email.com','555-1030',101,'Active',7800);


CREATE TABLE employees_south LIKE employees_north;

INSERT INTO employees_south VALUES
(31,'Ryan','Baker','IT','Developer',67000,'2020-02-10','Austin','TX','USA','ryan.b@email.com','555-2001',101,'Active',5200),
(32,'Grace','Nelson','HR','Recruiter',54000,'2021-04-12','Orlando','FL','USA','grace.n@email.com','555-2002',102,'Active',3100),
(33,'Jack','Carter','Finance','Analyst',63000,'2019-08-14','Nashville','TN','USA','jack.c@email.com','555-2003',103,'Active',4600),
(34,'Chloe','Mitchell','IT','Developer',69000,'2018-06-20','Charlotte','NC','USA','chloe.m@email.com','555-2004',101,'Active',6100),
(35,'Owen','Perez','Sales','Executive',58500,'2022-02-18','Tampa','FL','USA','owen.p@email.com','555-2005',104,'Active',7050),
(36,'Lily','Roberts','Marketing','Specialist',53500,'2021-10-09','Memphis','TN','USA','lily.r@email.com','555-2006',105,'Active',2550),
(37,'Samuel','Turner','IT','Tester',50500,'2020-12-12','Austin','TX','USA','samuel.t@email.com','555-2007',101,'Active',2050),
(38,'Hannah','Phillips','HR','Coordinator',48500,'2022-05-15','Orlando','FL','USA','hannah.p@email.com','555-2008',102,'Active',1600),
(39,'Gabriel','Campbell','Finance','Accountant',61200,'2019-07-05','Nashville','TN','USA','gabriel.c@email.com','555-2009',103,'Active',4050),
(40,'Zoey','Parker','Sales','Executive',59500,'2020-09-22','Charlotte','NC','USA','zoey.p@email.com','555-2010',104,'Active',6600),
(41,'Carter','Evans','IT','Developer',72500,'2017-03-10','Tampa','FL','USA','carter.e@email.com','555-2011',101,'Active',8100),
(42,'Nora','Edwards','Marketing','Manager',75500,'2016-11-18','Memphis','TN','USA','nora.e@email.com','555-2012',105,'Active',9100),
(43,'Jayden','Collins','Sales','Executive',57500,'2021-12-20','Austin','TX','USA','jayden.c@email.com','555-2013',104,'Active',5600),
(44,'Aria','Stewart','HR','Recruiter',56200,'2020-06-15','Orlando','FL','USA','aria.s@email.com','555-2014',102,'Active',2850),
(45,'Luke','Sanchez','Finance','Analyst',64500,'2018-10-01','Nashville','TN','USA','luke.s@email.com','555-2015',103,'Active',4750),
(46,'Scarlett','Morris','IT','Developer',69500,'2019-05-12','Charlotte','NC','USA','scarlett.m@email.com','555-2016',101,'Active',6250),
(47,'Nathan','Rogers','Marketing','Specialist',52500,'2022-03-08','Tampa','FL','USA','nathan.r@email.com','555-2017',105,'Active',2350),
(48,'Layla','Reed','Sales','Executive',60200,'2020-08-18','Memphis','TN','USA','layla.r@email.com','555-2018',104,'Active',7250),
(49,'Aaron','Cook','Finance','Accountant',61800,'2019-02-14','Austin','TX','USA','aaron.c@email.com','555-2019',103,'Active',4150),
(50,'Victoria','Morgan','HR','Coordinator',49500,'2021-12-01','Orlando','FL','USA','victoria.m@email.com','555-2020',102,'Active',1850),
(51,'Thomas','Bell','IT','Tester',51500,'2020-07-07','Nashville','TN','USA','thomas.b@email.com','555-2021',101,'Active',2150),
(52,'Penelope','Murphy','Marketing','Specialist',54500,'2021-09-14','Charlotte','NC','USA','penelope.m@email.com','555-2022',105,'Active',2650),
(53,'Isaac','Bailey','Sales','Executive',60800,'2022-04-02','Tampa','FL','USA','isaac.b@email.com','555-2023',104,'Active',7350),
(54,'Riley','Rivera','Finance','Analyst',65500,'2018-12-28','Memphis','TN','USA','riley.r@email.com','555-2024',103,'Active',5050),
(55,'Levi','Cooper','IT','Developer',71500,'2017-08-11','Austin','TX','USA','levi.c@email.com','555-2025',101,'Active',7950),
(56,'Aurora','Richardson','HR','Recruiter',56800,'2020-04-04','Orlando','FL','USA','aurora.r@email.com','555-2026',102,'Active',2950),
(57,'Christopher','Cox','Marketing','Manager',77500,'2016-07-15','Nashville','TN','USA','christopher.c@email.com','555-2027',105,'Active',9550),
(58,'Lucy','Howard','Sales','Executive',61200,'2021-02-14','Charlotte','NC','USA','lucy.h@email.com','555-2028',104,'Active',7450),
(59,'Joshua','Ward','Finance','Accountant',62200,'2019-11-19','Tampa','FL','USA','joshua.w@email.com','555-2029',103,'Active',4250),
(60,'Stella','Torres','IT','Developer',70500,'2018-09-30','Memphis','TN','USA','stella.t@email.com','555-2030',101,'Active',7850);


# Now Perform UNION

select * from employees_north
UNION
select * from employees_south;

