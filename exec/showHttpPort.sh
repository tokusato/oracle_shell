SQL_HOME=/home/oracle/query
EXEC_QUERY=httpPort.sql
LIB=/home/oracle/LDLIB


${LIB}/sqlplus sys/oracle as sysdba @${SQL_HOME}/status/${EXEC_QUERY}

