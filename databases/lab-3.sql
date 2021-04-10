--> Create DEPARTMENT table with the following structure and set the DEPTNO as primary key and DNAME is unique key.
CREATE TABLE DEPARTMENT (
    DEPTNO NUMERIC(2) NOT NULL,
    DNAME VARCHAR(10) CONSTRAINT unique_dname UNIQUE,
    LOCATION VARCHAR(10),
    ESTABLISHED DATE,
    CONSTRAINT pk_deptno PRIMARY KEY (DEPTNO)
);

--> Write a query to add constraints to the EMPLOYEE table that EMPNO as the primary key and DEPTNO as the foreign key.
ALTER TABLE EMPLOYEE ADD CONSTRAINT pk_empno PRIMARY KEY (EMPNO);
ALTER TABLE EMPLOYEE ADD CONSTRAINT fk_deptno FOREIGN KEY (DEPTNO) REFERENCES DEPARTMENT(DEPTNO);

