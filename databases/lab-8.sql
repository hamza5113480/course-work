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

