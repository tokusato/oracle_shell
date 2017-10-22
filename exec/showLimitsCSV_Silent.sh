##プロファイル名やリソース名、リソースタイプ、リミットなどの情報を参照するには、
##データディクショナリの dba_profiles を確認する。
##サイレントモード(sqlplus -s) かつ、カンマ区切りにて実行


SQL_HOME=/u01/userhome/oracle/oracle_shell/query
EXEC_QUERY=limits_csv.sql
LIB=/home/oracle/LDLIB


${LIB}/sqlplus -s  sys/oracle as sysdba @${SQL_HOME}/${EXEC_QUERY} 

