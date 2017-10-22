col owner  format a10
col table_name  format a10
col tablespace_name  format a10
col blocks  format '00000'
set timing on


!echo PDB
SELECT DBMS_XDB_CONFIG.getHTTPsPort,DBMS_XDB_CONFIG.getHTTPPort from dual;
!echo CDB
ALTER SESSION SET CONTAINER=CDB$ROOT;
SELECT DBMS_XDB_CONFIG.getHTTPsPort,DBMS_XDB_CONFIG.getHTTPPort from dual;
ALTER SESSION SET CONTAINER=ORCL;
EXIT  


