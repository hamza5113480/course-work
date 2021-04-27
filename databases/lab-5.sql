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

--> Calculate and diplay the total salary (salary + commission) of the employees.
SELECT SUM (SAL, COMISSION) FROM EMPLOYEE;

--> Calaulate the max and min commission of employee table and rename the column as max_comm and min_comm.
SELECT MAX(Commission) AS max_comm, MIN(Commission) AS min_comm FROM EMPLOYEE;

--> Display total salary spent for employees who are working as ‘Manager’.
SELECT SUM(SAL) FROM EMPLOYEE WHERE JOB = 'Manager';

--> List all employee names, DOJ, salary and 30% rise in salary.
SELECT ENAME, DOJ, SAL, SAL * 1.3 AS INCREASED_SALARY FROM EMPLOYEE;

