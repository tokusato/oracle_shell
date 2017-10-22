SQL_HOME=/home/oracle/oracle_shell/query
EXEC_QUERY=httpPort.sql
LIB=/home/oracle/LDLIB


${LIB}/sqlplus sys/oracle as sysdba @${SQL_HOME}/${EXEC_QUERY}

