# Labs
### Lab-1:
1. Write SQL statements to create a table name “STUDENT” of following table and insert data shown below.
   
      ![img.png](../resources/img.png)
2. Write SQL statements to insert seven more records into same table and also attach printed output of table.
3. Write SQL statements to view all entries in the table and also attach printed output of table.
### Lab-2:
1. Create a table called EMPLOYEE table with the following structure and allow NULL for all columns except EMPNO, ENAME, DOJ and JOB.

            Name 	|	Type
            -------------------------
            EMPNO 	|	NUMBER(6)
            ENAME	|	VARCHAR2(10)
            GENDER	|	CHAR(1)
            DOJ	|	DATE
            JOB	|	VARCHAR2(30)
            MGR	|	NUMBER(4)
            DEPTNO 	|        NUMBER(3)
            SAL	|	NUMBER(7,2)
2. Add two columns Commission and HireDate to the EMPLOYEE table. Commission is a decimal type and can be NULL.
3. Modify the column width of the JOB field of EMPLOYEE table with VARCHAR(50).
4. Write a query to drop a column DOJ to the EMPLOYEE table.
### Lab-3:
1. Create DEPARTMENT table with the following structure and set the DEPTNO as primary key and DNAME is unique key.

            Name	 |	Type
            -------------------------
            DEPTNO	 |	NUMBER(2)
            DNAME	 |	VARCHAR2(10)
            LOCATION	 |	VARCHAR2(10)
            ESTABLISHED |	DATE
2. Write a query to add constraints to the EMPLOYEE table that EMPNO as the primary key and DEPTNO as the foreign key.
3. The Company wants to set 3000 as a min salary of employee. You are required to write a query to add suitable constraint to the EMPLOYEE table.

### Lab-4:
1. Insert 10 record into DEPARTMENT table, which is created in previous Lab.
2. Insert 12 record into EMPLOYEE table, which is created in previous Lab.
3. Update the EMPLOYEE table to set the commission of all employees to Rs 1800/- who are working as MANAGER
4. Create a pseudo table EMPLOYEE_2 with the same structure as the table EMPLOYEE and insert rows into the table using select clauses.
5. Delete all employees, who are working as "Cleark".
6. Delete the employee, whose name is Qasim.
7. List all employees, order by Job
   - In ascending order.
   - In descending order
8. Display JOBS from the EMPLOYEE table avoiding the duplicated values.
### Lab-5:
1. Select all employees, whose department name is "EE" and "CSE" using IN operator.
2. Display all the details of department, whose name does not start with ‘E’ using LIKE operator.
3. Calculate the  4th  times salary of all employees, who are woking as ‘Manager’ and diplay complete data of employee;
4. Count and diplay the total employees working as ‘MANAGER’.
5. Calculate and diplay the total salary (salary + commission) of the employees.
6. Calaulate the max and min commission of employee table and rename the column as max_comm and min_comm.
7. Display total salary spent for employees who are working as ‘Manager’.
8. List all employee names, DOJ, salary and 30% rise in salary.
9. Display highest paid employee details under each manager.
10. Display number of employees working in each department and their department name.

### Lab-6:
1. Select all employees from ‘EE’, ‘IS’ and ‘CSE’ department using UNION operator.
2. Display all employees name and salary, whose salary is lesser than maximum salary of the company and job title starts with ‘S’.
3. Write a query to find all the employees who work in the same job as ‘ALI’.
4. Write a query to display information of employees who earn more than any employee in dept 10.
5. Display the employees who have the same job as ‘ALI’ and whose salary <= ‘NASIR’.
6. Write a query to display the name and job of all employees in dept 20 who have a job that someone in the CSE dept as well.
7. Write a query to list all the employees who salary is < the average salary of their own dept.
8. Write a query to list the employees in dept 10 with the same job as anyone in the ‘CSE’ dept.
9. Write a query to create a view, which list the employees including dept name.

### Lab-7:
- Create AccDept.( Accredited Department by quality council)

             DEPTNO	|      DNAME	 |     DCity
              --------------------------------------
             10 	|	EE 	 |  MAIN BLOCK
             20 	|	CSE      |  MANUFACTURING UNIT
             30 	|	IS	 |  MAIN BLOCK
1. Display the departments that are accredited by the quality council.
2. Display the employees of departments which are not accredited by the quality council
3. Write a query to output the name, job, empno, deptname and location for each dept, even if there are no employees.
4. Find the name of the manager for each employee. Include the following in the output: empno, empname, job and his manager’s name.
5. Display the details of those who draw the same salary.

### Lab-8:
1. Write a procedure to add an amount of Rs.1000 for the employees whose salaries is greater than 5000 and who belongs to the deptno passed as an argument.
2. Write a block to update the salary of the employee with a 10% increase whose empno is to be passed as an argument for the procedure.
3. Write a function to find the salary of the employee who is working in the deptno 20 (to be passed as an argument).
4. Write a function to find the nature of job of the employee whose deptno is 20(to be passed as an argument)
5. Write a PL/SQL block to obtain the department name of the employee who works for deptno 30.

### Lab-9:
1. Write a TRIGGER to ensure that DEPT TABLE does not contain duplicate of null values in DEPTNO column.
2. Write a Trigger to carry out the following action: on deleting a deptno from dept table, all the records with that deptno has to be deleted from the emp table
3. Write a Trigger to carry out the following action: on deleting any records from the emp table, the same values must be inserted into the log table.