set lines 120
set pages 100
clear col
col USERNAME format a20
col USER_ID format 9999999
col PROFILE format a10
col ACCOUNT_STATUS format a20
col DEFAULT_TABLESPACE format a10
col TEMPORARY_TABLESPACE format a5
col CREATED format a9
select
  username,
  user_id,
  profile,
  account_status,
  default_tablespace,
  temporary_tablespace,
  created
from
  dba_users
/
exit 
