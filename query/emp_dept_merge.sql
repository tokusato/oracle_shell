SET LINES 120
SET PAGES 100
CLEAR COL
set autotrace on 
set timing on
SELECT /* GET ENAME FROM DNAME */
  e.empno, 
  e.empname, 
  d.deptno,
  d.deptname
FROM
  employee e left join department d
ON
  d.deptno = d.deptno
AND 
  d.deptno = 3
ORDER BY 
  empno
/
EXIT
