--> Create a table called EMPLOYEE table and allow NULL for all columns except EMPNO, ENAME, DOJ and JOB.
CREATE TABLE EMPLOYEE (
    EMPNO NUMERIC(6) NOT NULL,
    ENAME VARCHAR(10) NOT NULL,
    GENDER CHAR(1) NOT NULL,
    DOJ DATE NOT NULL,
    JOB VARCHAR(30) NOT NULL,
    MGR NUMERIC(4),
    DEPTNO NUMERIC(3),
    SAL NUMERIC(7, 2),
    PRIMARY KEY (EMPNO)
);

--> Add two columns Commission and HireDate to the EMPLOYEE table. Commission is a decimal type and can be NULL.
ALTER TABLE EMPLOYEE ADD Commission NUMERIC(7, 2);
ALTER TABLE EMPLOYEE ADD HireDate DATE;

--> Modify the column width of the JOB field of EMPLOYEE table with VARCHAR(50).
ALTER TABLE EMPLOYEE
ALTER COLUMN JOB VARCHAR(50);
--> Write a query to drop a column DOJ to the EMPLOYEE table.
ALTER TABLE EMPLOYEE DROP COLUMN DOJ;

