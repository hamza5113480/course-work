--> Create DEPARTMENT table with the following structure and set the DEPTNO as primary key and DNAME is unique key.
CREATE TABLE DEPARTMENT (
    DEPTNO NUMERIC(2) NOT NULL,
    DNAME VARCHAR(10) CONSTRAINT unique_dname UNIQUE,
    LOCATION VARCHAR(10),
    ESTABLISHED DATE,
    CONSTRAINT pk_deptno PRIMARY KEY (DEPTNO)
);

