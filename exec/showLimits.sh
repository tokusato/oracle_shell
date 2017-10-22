SQL_HOME=/u01/userhome/oracle/oracle_shell/query
EXEC_QUERY=limits.sql
LIB=/home/oracle/LDLIB


${LIB}/sqlplus sys/oracle as sysdba @${SQL_HOME}/${EXEC_QUERY}

