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

--> The Company wants to set 3000 as a min salary of employee. You are required to write a query to add suitable constraint to the EMPLOYEE table.
ALTER TABLE EMPLOYEE ADD CONSTRAINT check_sal CHECK (SAL >= 3000);
