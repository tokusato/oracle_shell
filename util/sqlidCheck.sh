##################################
## テーブル検索のアクセスパスを出力するシェル
## 第一引数にシングルクォートで囲んだSQL文
## e.g. ./accessPath.sh 'select id from test;'
##################################

## memo
#/home/oracle/LDLIB/sqlplus -s sys/oracle@orcl12c as sysdba  << EOF
#SELECT sql_text, sql_id, child_number FROM v\$sql WHERE sql_text LIKE '%$keyword%' and rownum < 3;
#SELECT sql_text, sql_id, child_number FROM v\$sql WHERE sql_text = '$keyword' and rownum < 3;
##SELECT sql_text, sql_id, child_number FROM v\$sql WHERE sql_text = '$keyword' and rownum < 3;
#SELECT sql_text, sql_id, child_number FROM v\$sql WHERE sql_text LIKE '\%$keyword\%' ;
#SELECT sql_text, sql_id, child_number FROM v\$sql where sql_id='2p9fv35c7zxtg'; 

echo $1 

exit

/home/oracle/LDLIB/sqlplus sys/oracle as sysdba  << EOF

set echo on
col SQL_TEXT format a80
SELECT sql_text, sql_id, child_number FROM v\$sql where sql_text LIKE '%$keyword%'; 

exit

EOF

