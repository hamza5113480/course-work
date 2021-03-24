-->  Write SQL statements to create a table name “STUDENT” of following table and insert data
 CREATE TABLE STUDENT
(
    Reg_NO integer,
    First_Name char(50),
    Last_Name char(50),
    Address char(50),
    City char(50),
    Country char(25),
    Birth_Date date,
    Gender char(50),
);
Insert into STUDENT values(1234, 'Nasir', 'Kareem','D-23','Lahore','Pakistan','10-Sep-1988','M');
Insert into STUDENT values(1235, 'Shahid', 'Sultan','D-58','Lahore','Pakistan','10-Sep-1989','M');
Insert into STUDENT values(1237, 'Aysha', 'Abbas','D-26','Karachi','Pakistan','10-Jan-1990','F');
Insert into STUDENT values(1238, 'Saleem', 'Ahmed','D-27','Rawalpindi','Pakistan','10-Dec-1978','M');
Insert into STUDENT values(1239, 'Fawad', 'Alam','D-28','Lahore','Pakistan','10-Nov-1986','M');
Insert into STUDENT values(1240, 'Hina', 'khan','D-28','Karachi','Pakistan','10-Oct-1988','F');

--> Write SQL statements to insert seven more records into same table and also attach printed output of table.
Insert into STUDENT values(1240, 'hamza', 'Kashif','D-23','Lahore','Pakistan','10-Sep-1958','M');
Insert into STUDENT values(1241, 'abid', 'Sandal','D-30','Lahore','Pakistan','10-Sep-1956','M');
Insert into STUDENT values(1242, 'Aysha', 'Abbas','D-31','Islamabad','Pakistan','10-Jan-2000','F');
Insert into STUDENT values(1243, 'Naseer', 'Ahmed','D-32','bahawalpur','Pakistan','10-Dec-1998','M');
Insert into STUDENT values(1244, 'Saleem', 'Ahmed','D-33','rahimyarkhan','Pakistan','10-Nov-1996','M');
Insert into STUDENT values(1245, 'hassan', 'khan','D-34','kotli','Pakistan','10-Oct-1998','F');
Insert into STUDENT values(1246, 'bilal', 'khan','D-35','kashmir','Pakistan','10-Oct-1978','F');

--> Write SQL statements to view all entries in the table and also attach printed output of table.
Select * from STUDENT

