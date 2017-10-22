
if [ -z $1 ];then
  echo "引数が1つ必要です。"
  exit 1 
fi

TABLE_NAME=$1

/home/oracle/LDLIB/sqlplus -s sys/oracle@orcl12c as sysdba  << EOF

select table_name from user_tables where table_name = '${TABLE_NAME}';
exit

EOF

