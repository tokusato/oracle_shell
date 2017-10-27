SQL_HOME=/home/oracle/oracle_shell/query
EXEC_QUERY=performance/system_event.sql
LIB=/home/oracle/LDLIB


${LIB}/sqlplus sys/oracle as sysdba @${SQL_HOME}/${EXEC_QUERY}

