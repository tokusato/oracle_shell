#!/bin/bash
##コンテナデータベースの情報を表示する。将来的に、より多くの情報を取得できるようにシェルを修正する。
##ヒアドキュメントを利用してsqlをそのまま入力させる。


SQL_HOME=/u01/userhome/oracle/oracle_shell/query
EXEC_QUERY=limits.sql
LIB=/home/oracle/LDLIB
${LIB}/sqlplus -s /nolog << EOF

   conn sys/oracle as sysdba
   show pdbs;
   exit

EOF



