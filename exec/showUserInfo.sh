##ユーザ名やID、プロファイル、アカウントのステータスなどの情報を参照するには、
##データディクショナリの dba_users を確認する。

SQL_HOME=/u01/userhome/oracle/oracle_shell/query
EXEC_QUERY=userinfo.sql
LIB=/home/oracle/LDLIB


${LIB}/sqlplus sys/oracle as sysdba @${SQL_HOME}/${EXEC_QUERY}

