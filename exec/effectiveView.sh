#!/bin/bash
# 定義ファイル読み込み
. /home/oracle/oracle_shell/commonConfig.txt


echo '################'
echo 'v$nls_parameters'
/home/oracle/LDLIB/sqlplus -s sys/oracle@orcl12c as sysdba  << EOF
select * from v\$nls_parameters;
EOF

echo '################'
echo 'v$instance'
/home/oracle/LDLIB/sqlplus -s sys/oracle@orcl12c as sysdba  << eof
select * from v\$instance;
eof

echo '################'
echo 'v$database'
/home/oracle/LDLIB/sqlplus -s sys/oracle@orcl12c as sysdba  << eof
select * from v\$database where rownum = 1;
eof

echo '################'
echo 'v$session'
/home/oracle/LDLIB/sqlplus -s sys/oracle@orcl12c as sysdba  << eof
select * from v\$session where rownum = 1;
eof

echo '################'
echo 'v$sql  restrincting 1 row'
/home/oracle/LDLIB/sqlplus -s sys/oracle@orcl12c as sysdba  << eof
select * from v\$sql where rownum = 1;
eof

echo '################'
echo 'v$datafile  restrincting 1 row'
/home/oracle/LDLIB/sqlplus -s sys/oracle@orcl12c as sysdba  << eof
select * from v\$datafile where rownum = 1;
eof


