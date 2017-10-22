##プロファイル名やリソース名、リソースタイプ、リミットなどの情報を参照するには、
##データディクショナリの dba_profiles を確認する。
##サイレントモード(sqlplus -s) かつ、カンマ区切りにて実行
##サイレントモードとset echo on は相いれない。
##実行したクエリを確認することのほうが重要と考えるため、サイレントモードは使用しない。

SQL_HOME=/u01/userhome/oracle/oracle_shell/query
EXEC_QUERY=limits_csv.sql
LIB=/home/oracle/LDLIB


${LIB}/sqlplus   sys/oracle as sysdba @${SQL_HOME}/${EXEC_QUERY} 
#${LIB}/sqlplus -s   sys/oracle as sysdba @${SQL_HOME}/${EXEC_QUERY} 

