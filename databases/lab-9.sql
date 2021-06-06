-- Write a TRIGGER to ensure that DEPT TABLE does not contain duplicate of null values in DEPTNO column.
CREATE TRIGGER trg_NoDuplicateDeptNo
ON DEPARTMENT
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT DEPTNO
        FROM inserted
        WHERE DEPTNO IS NULL OR DEPTNO IN (SELECT DEPTNO FROM DEPARTMENT)
    )
    BEGIN
        RAISERROR ('Duplicate or NULL DEPTNO is not allowed', 16, 1);
        ROLLBACK TRANSACTION;
    END
END

-- Write a Trigger to carry out the following action: on deleting a deptno from dept table, all the records with that deptno has to be deleted from the emp table
CREATE TRIGGER trg_DeleteEmpOnDeptDelete
ON DEPARTMENT
FOR DELETE
AS
BEGIN
    DELETE FROM EMPLOYEE
    WHERE DEPTNO IN (SELECT DELETED.DEPTNO FROM DELETED);
END

