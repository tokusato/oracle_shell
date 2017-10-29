##################################
## 特定のSQL文のSQLIDを検索するためのシェル
## 第一引数にSQLIDを検索したいSQL文に特徴のあるキーワード
## e.g. ./sqlidCheck.sh test
##################################

SQL_HOME=/home/oracle/oracle_shell/query/sqlid
EXEC_QUERY=sqlid.sql
TMPL_QUERY=sqlid.tmpl
LIB=/home/oracle/LDLIB
SQL_KEYWORD=$1

if [ -z ${SQL_KEYWORD} ]; then 
	echo "第一引数にキーワードを入れてください。"
	exit 1;
fi

cp -p ${SQL_HOME}/${TMPL_QUERY}  ${SQL_HOME}/${EXEC_QUERY}
sed -i s/XXX/${SQL_KEYWORD}/ ${SQL_HOME}/${EXEC_QUERY}

#/home/oracle/LDLIB/sqlplus sys/oracle as sysdba  @${SQL_HOME}/${EXEC_QUERY}
/home/oracle/LDLIB/sqlplus sys/oracle@orcl12c as sysdba  @${SQL_HOME}/${EXEC_QUERY}

exit

EOF

