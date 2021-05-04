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
