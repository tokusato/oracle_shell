##日付のフォーマットを規定する

SQL_HOME=/u01/userhome/oracle/oracle_shell/query
EXEC_QUERY=dateformat.sql
LIB=/home/oracle/LDLIB


${LIB}/sqlplus   sys/oracle as sysdba @${SQL_HOME}/${EXEC_QUERY} 
#${LIB}/sqlplus -s   sys/oracle as sysdba @${SQL_HOME}/${EXEC_QUERY} 

