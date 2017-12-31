set autotrace off
set timing off
set pagesize 1000
set line 200
set linesize 200

col NAME format a45
col CON_ID format a25

select * from  v$pgastat;
exit;

