
DBTYPE=$1

if [ -z ${DBTYPE} ];then
  echo 'DBTYPEが設定されていないので${DBTYPE}=ORCL(シングルインスタンス)として実行します。'
  DBTYPE=ORCL
  sleep 1
fi

echo DBTYPE=>${DBTYPE}

##ユーザ名やID、プロファイル、アカウントのステータスなどの情報を参照するには、
##データディクショナリの dba_users を確認する。

SQL_HOME=/u01/userhome/oracle/oracle_shell/query
EXEC_QUERY=userinfo.sql
LIB=/home/oracle/LDLIB


#${LIB}/sqlplus sys/oracle as sysdba @${SQL_HOME}/${EXEC_QUERY}
#${LIB}/sqlplus sys/oracle@orcl12c as sysdba @${SQL_HOME}/${EXEC_QUERY}


if [ ${DBTYPE} = "CDB" ];then
  ${LIB}/sqlplus sys/oracle@orcl12c as sysdba @${SQL_HOME}/${EXEC_QUERY}
elif [ ${DBTYPE} = "ORCL" ];then
  ${LIB}/sqlplus sys/oracle@orcl as sysdba @${SQL_HOME}/${EXEC_QUERY}
else 
  echo "DBTYPE ${DBTYPE} NOT FOUND ON SYSTEM"
  exit 1
fi
