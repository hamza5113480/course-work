--> Insert 10 record into DEPARTMENT table, which is created in previous Lab.
INSERT INTO DEPARTMENT VALUES(1,'SEECS','NUST', '17-January-1990')
INSERT INTO DEPARTMENT VALUES(2,'NBS','NUST', '10-January-1992')
INSERT INTO DEPARTMENT VALUES(3,'SADA','NUST', '9-January-1997')
INSERT INTO DEPARTMENT VALUES(4,'SCME','NUST', '10-August-1989')
INSERT INTO DEPARTMENT VALUES(5,'CIPS','NUST','19-May 2000')
INSERT INTO DEPARTMENT VALUES(6,'SMME','NUST', '20-February-2003')
INSERT INTO DEPARTMENT VALUES(7,'EIEE','NUST','30-May-1999')
INSERT INTO DEPARTMENT VALUES(8,'CENLIB','NUST', '10-March-2018')
INSERT INTO DEPARTMENT VALUES(9,'CETE','NUST','8-September-1995')
INSERT INTO DEPARTMENT VALUES(10,'NTPS','NUST', '10-December-2019')

--> Insert 12 record into EMPLOYEE table, which is created in previous Lab.
INSERT INTO EMPLOYEE VALUES(0,'Usman','M','Programmer','5-2-2018',2,5,35000)
INSERT INTO EMPLOYEE VALUES(1,'Mahin', 'F','Artist','17-9-2017',2,5,30000)
INSERT INTO EMPLOYEE VALUES(2,'Wajeeh', 'M','Manager','30-5-1999',NULL,5,125000)
INSERT INTO EMPLOYEE VALUES(3,'Afzaal','M','Clerk','12-9-2017',2,5,17000)
INSERT INTO EMPLOYEE VALUES(4,'Hassan','M','Programmer', '8-7-2013',2,5,40000)
INSERT INTO EMPLOYEE VALUES(5,'Maj. Kalim','M','Developer','17-6-2018',2,5,80000)
INSERT INTO EMPLOYEE VALUES(6,'Mohsin Ali', 'M','Manager','19-7-2007',NULL,7,120000)
INSERT INTO EMPLOYEE VALUES(7,'Teri','M','Security','21-3-2016',6,7,15000)
INSERT INTO EMPLOYEE VALUES(8,'Junaid','M','Programmer','12-4-2015',6,7,34000)
INSERT INTO EMPLOYEE VALUES(9,'Umar Arif','M','Director','12-9-2005',6,7,50000)
INSERT INTO EMPLOYEE VALUES(10,'Atif','M','Director','12-4-2006',2,5,50000)
INSERT INTO EMPLOYEE VALUES(11,'Umair','F','Developer','14-2-2018',2,5,40000)
INSERT INTO EMPLOYEE VALUES(12,'Yalmaz','M','Programmer','2-7-2009',6,7,40000)

--> Update the EMPLOYEE table to set the commission of all employees to Rs 1800/- who are working as MANAGER
UPDATE EMPLOYEE SET Commission = 1800 WHERE JOB = 'MANAGER';

--> Create a pseudo table EMPLOYEE_2 with the same structure as the table EMPLOYEE and insert rows into the table using select clauses.
SELECT *
INTO EMPLOYEE_2
FROM EMPLOYEE;

--> Delete all employees, who are working as "Cleark".
DELETE FROM EMPLOYEE WHERE JOB = 'Cleark';

--> Delete the employee, whose name is Qasim.
DELETE FROM EMPLOYEE WHERE ENAME = 'Qasim';

--> List all employees, order by Job in ascending order.
SELECT * FROM EMPLOYEE ORDER BY JOB ASC;
--> List all employees, order by Job in descending order.
SELECT * FROM EMPLOYEE ORDER BY JOB DESC;
--> Display JOBS from the EMPLOYEE table avoiding the duplicated values.
SELECT DISTINCT JOB FROM EMPLOYEE;
