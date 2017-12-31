set autotrace off
set timing off
set pagesize 1000
set line 200
set linesize 200

col con_id format a30

select * from v$sga;
exit;

