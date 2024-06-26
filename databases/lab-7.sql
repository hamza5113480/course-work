--> Create AccDept.( Accredited Department by quality council)
CREATE TABLE AccDept (
    DEPTNO INT NOT NULL,
    DNAME VARCHAR(10) NOT NULL,
    DCity VARCHAR(30) NOT NULL,
    PRIMARY KEY (DEPTNO)
);

INSERT INTO AccDept (DEPTNO, DNAME, DCity) VALUES (10, 'EE', 'MAIN BLOCK');
INSERT INTO AccDept (DEPTNO, DNAME, DCity) VALUES (20, 'CSE', 'MANUFACTURING UNIT');
INSERT INTO AccDept (DEPTNO, DNAME, DCity) VALUES (30, 'IS', 'MAIN BLOCK');

-- Display the departments that are accredited by the quality council.
SELECT dept.DEPTNO,dept.DNAME,dept.DCity FROM AccDept as dept INNER JOIN AccDept
ON dept.DEPTNO = AccDept.DEPTNO
WHERE AccDept.DNAME = 'QC'

-- Display the employees of departments which are not accredited by the quality council
SELECT *
FROM EMPLOYEE E
WHERE E.DEPTNO NOT IN (SELECT DEPTNO FROM AccDept);

-- Write a query to output the name, job, empno, deptname and location for each dept, even if there are no employees.
SELECT E.EMPNO, E.ENAME, E.JOB, D.DNAME, D.LOCATION
FROM DEPARTMENT D
LEFT OUTER JOIN EMPLOYEE E ON D.DEPTNO = E.DEPTNO;


-- Find the name of the manager for each employee. Include the following in the output: empno, empname, job and his manager’s name.
SELECT E.EMPNO, E.ENAME AS EmployeeName, E.JOB, M.ENAME AS ManagerName
FROM EMPLOYEE E
LEFT OUTER JOIN EMPLOYEE M ON E.MGR = M.EMPNO;

-- Display the details of those who draw the same salary.
SELECT E1.*
FROM EMPLOYEE E1
JOIN EMPLOYEE E2 ON E1.SAL = E2.SAL AND E1.EMPNO <> E2.EMPNO;

