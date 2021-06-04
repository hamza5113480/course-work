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
