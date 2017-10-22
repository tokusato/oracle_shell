set lines 120
set pages 100
clear col
col PROFILE format a15
col RESOURCE_NAME format a30
col RESOURCE_TYPE format a15
col LIMIT format a15
select
  profile,
  resource_name,
  resource_type,
  limit
from
  dba_profiles
where
  profile = 'DEFAULT'
order by
  resource_type, resource_name
/
exit
