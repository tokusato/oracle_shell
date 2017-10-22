!date ;

SET ECHO ON
SET TIMING ON
SET LINES 120
SET PAGES 100
SET FEEDBACK OFF
SET NULL "NULL"
-- フォーマット変換前
select sysdate from dual;
/* 複数行にわたるコマンドとしても利用できる。 */
alter session set nls_date_format='YYYY/MM/DD HH24:MI:SS';
-- フォーマット変換後
select sysdate from dual;
EXIT
