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
  /*employee e join department d*/
  department d JOIN employee e
ON
  d.deptno = e.deptno
AND 
  d.deptno >= 3 
ORDER BY 
  empno
/
EXIT
