-- Write a procedure to add an amount of Rs.1000 for the employees whose salaries is greater than 5000 and who belongs to the deptno passed as an argument.
CREATE PROCEDURE IncreaseSalary
@DeptNo INT
AS
BEGIN
    UPDATE EMPLOYEE
    SET SAL = SAL + 1000
    WHERE SAL > 5000 AND DEPTNO = @DeptNo;
END
