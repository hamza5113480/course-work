--> Select all employees from ‘EE’, ‘IS’ and ‘CSE’ department using UNION operator.
SELECT E.* FROM EMPLOYEE E
JOIN DEPARTMENT D ON E.DEPTNO = D.DEPTNO
WHERE D.DNAME = 'EE'
UNION
SELECT E.* FROM EMPLOYEE E
JOIN DEPARTMENT D ON E.DEPTNO = D.DEPTNO
WHERE D.DNAME = 'IS'
UNION
SELECT E.* FROM EMPLOYEE E
JOIN DEPARTMENT D ON E.DEPTNO = D.DEPTNO
WHERE D.DNAME = 'CSE';

--> Display all employees name and salary, whose salary is lesser than maximum salary of the company and job title starts with ‘S’.
SELECT ENAME, SAL FROM EMPLOYEE
WHERE SAL < (SELECT MAX(SAL) FROM EMPLOYEE)
  AND JOB LIKE 'S%';

--> Write a query to find all the employees who work in the same job as ‘ALI’.
SELECT * FROM EMPLOYEE
WHERE JOB = (SELECT JOB FROM EMPLOYEE WHERE ENAME = 'ALI');

--> Write a query to display information of employees who earn more than any employee in dept 10.
SELECT * FROM EMPLOYEE
WHERE SAL > (SELECT MAX(SAL) FROM EMPLOYEE WHERE DEPTNO = 10);

--> Display the employees who have the same job as ‘ALI’ and whose salary <= ‘NASIR’.
SELECT * FROM EMPLOYEE
WHERE JOB = (SELECT JOB FROM EMPLOYEE WHERE ENAME = 'ALI')
  AND SAL <= (SELECT SAL FROM EMPLOYEE WHERE ENAME = 'NASIR');

--> Write a query to display the name and job of all employees in dept 20 who have a job that someone in the CSE dept as well.
SELECT ENAME, JOB FROM EMPLOYEE
WHERE DEPTNO = 20
AND JOB IN (SELECT JOB FROM EMPLOYEE WHERE DEPTNO = (SELECT DEPTNO FROM DEPARTMENT WHERE DNAME = 'CSE'));

--> Write a query to list all the employees who salary is < the average salary of their own dept.
SELECT E.* FROM EMPLOYEE E
WHERE SAL < (SELECT AVG(SAL) FROM EMPLOYEE WHERE DEPTNO = E.DEPTNO);

