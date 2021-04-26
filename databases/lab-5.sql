--> Select all employees, whose department name is "EE" and "CSE" using IN operator.
SELECT * FROM EMPLOYEE WHERE DEPTNO IN (SELECT DEPTNO FROM DEPARTMENT WHERE DNAME IN ('EE', 'CSE'));

--> Display all the details of department, whose name does not start with 'E' using LIKE operator.
SELECT * FROM DEPARTMENT WHERE DNAME NOT LIKE 'E%';

--> Calculate the 4th times salary of all employees, who are woking as ‘Manager’ and diplay complete data of employee ;
SELECT *, SAL * 4 AS FourthTimesSalary FROM EMPLOYEE WHERE JOB = 'Manager';

--> Count and diplay the total employees working as ‘MANAGER’.
SELECT COUNT(*) AS TotalManagers
FROM EMPLOYEE
WHERE JOB = 'Manager';

