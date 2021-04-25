--> Select all employees, whose department name is "EE" and "CSE" using IN operator.
SELECT * FROM EMPLOYEE WHERE DEPTNO IN (SELECT DEPTNO FROM DEPARTMENT WHERE DNAME IN ('EE', 'CSE'));

--> Display all the details of department, whose name does not start with 'E' using LIKE operator.
SELECT * FROM DEPARTMENT WHERE DNAME NOT LIKE 'E%';
