--> Create AccDept.( Accredited Department by quality council)
CREATE TABLE AccDept (
    DEPTNO INT NOT NULL,
    DNAME VARCHAR(10) NOT NULL,
    DCity VARCHAR(30) NOT NULL,
    PRIMARY KEY (DEPTNO)
);

INSERT INTO AccDept (DEPTNO, DNAME, DCity) VALUES (10, 'EE', 'MAIN BLOCK');
INSERT INTO AccDept (DEPTNO, DNAME, DCity) VALUES (20, 'CSE', 'MANUFACTURING UNIT');
INSERT INTO AccDept (DEPTNO, DNAME, DCity) VALUES (30, 'IS', 'MAIN BLOCK');

-- Display the departments that are accredited by the quality council.
SELECT dept.DEPTNO,dept.DNAME,dept.DCity FROM AccDept as dept INNER JOIN AccDept
ON dept.DEPTNO = AccDept.DEPTNO
WHERE AccDept.DNAME = 'QC'
