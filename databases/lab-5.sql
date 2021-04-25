--> Select all employees, whose department name is "EE" and "CSE" using IN operator.
SELECT * FROM EMPLOYEE WHERE DEPTNO IN (SELECT DEPTNO FROM DEPARTMENT WHERE DNAME IN ('EE', 'CSE'));


