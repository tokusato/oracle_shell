##################################
## テーブル検索のアクセスパスを出力するシェル
## 第一引数にシングルクォートで囲んだSQL文
## e.g. ./accessPath.sh 'select id from test;'
##################################

#if [ -z $1 ];then 
#	echo "第一引数には、シングルクォートで囲んだSQL文を入力してください。"
#	exit 1 
#fi


#/home/oracle/LDLIB/sqlplus -s sys/oracle@orcl12c as sysdba  << EOF
/home/oracle/LDLIB/sqlplus -s sys/oracle as sysdba  << EOF

explain plan for $1
select * from table(dbms_xplan.display);

exit

EOF

