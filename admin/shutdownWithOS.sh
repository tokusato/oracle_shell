##################################
## Oracleに接続するためのシェル
## user : sys as sysdba
## pass : oracle 
##################################

LDLIBPATH=/home/oracle/LDLIB
OPTION=$1

if [ ! `whoami` = "oracle" ];then
  echo "execute by oracle"
  exit 1
fi

echo "###################"
echo "NOW SHUTDOWN ORACLE"
echo "###################"

${LDLIBPATH}/sqlplus -s sys/oracle@orcl12c as sysdba  << EOF 
  shutdown immediate; 
EOF

sleep 1

#${LDLIBPATH}/sqlplus -s sys/oracle@orcl12c as sysdba  << EOF
#shutdown immediate;
#EOF

echo "###################"
echo "NOW SHUTDOWN VIRTUALBOX"
echo "###################"

if [ -z ${OPTION} ];then
  shutdown -h now
elif [ ${OPTION}="r" ];then
  shutdown -r now
else 
  echo designated argument is not supported
fi


