##################################
## テーブルのメタ情報を出力するためのシェル
## 第一引数にテーブル名を入力
##################################

if [ -z $1 ];then 
	echo "第一引数には、テーブル名を入力してください。"
	exit 1 
fi


#/home/oracle/LDLIB/sqlplus -s sys/oracle@orcl12c as sysdba  << EOF
/home/oracle/LDLIB/sqlplus -s sys/oracle as sysdba  << EOF

set linesize 30
col Name format a20
col Type format a20
desc $1

exit

EOF

