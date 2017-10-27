SQL_HOME=/home/oracle/oracle_shell/query
EXEC_QUERY=performance/active_ASH_status.sql
LIB=/home/oracle/LDLIB


${LIB}/sqlplus sys/oracle as sysdba @${SQL_HOME}/${EXEC_QUERY}

