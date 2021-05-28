-- Write a procedure to add an amount of Rs.1000 for the employees whose salaries is greater than 5000 and who belongs to the deptno passed as an argument.
CREATE PROCEDURE IncreaseSalary
@DeptNo INT
AS
BEGIN
    UPDATE EMPLOYEE
    SET SAL = SAL + 1000
    WHERE SAL > 5000 AND DEPTNO = @DeptNo;
END

-- Write a block to update the salary of the employee with a 10% increase whose empno is to be passed as an argument for the procedure.
CREATE PROCEDURE UpdateEmployeeSalary
    @EmpNo INT
AS
BEGIN
    UPDATE EMPLOYEE
    SET SAL = SAL * 1.10
    WHERE EMPNO = @EmpNo;
END

-- Write a function to find the salary of the employee who is working in the deptno 20 (to be passed as an argument).
CREATE FUNCTION GetSalary(@DeptNo INT)
RETURNS TABLE
AS
RETURN (
    SELECT SAL
    FROM EMPLOYEE
    WHERE DEPTNO = @DeptNo
);

-- Write a function to find the nature of job of the employee whose deptno is 20(to be passed as an argument)
CREATE FUNCTION GetJobNature(@DeptNo INT)
RETURNS TABLE
AS
RETURN (
    SELECT JOB
    FROM EMPLOYEE
    WHERE DEPTNO = @DeptNo
);

-- Write a PL/SQL block to obtain the department name of the employee who works for deptno 30.
CREATE PROCEDURE EX_FIVE(@target_employee int,@result_department varchar(20) OUTPUT)
AS
BEGIN
DECLARE @department int;
SET @department = 30;
SELECT @result_department = DEPARTMENT.DNAME FROM DEPARTMENT,EMPLOYEE WHERE EMPLOYEE.EMPNO = @target_employee and DEPARTMENT.DEPTNO = @department
SELECT @result_department;
END
