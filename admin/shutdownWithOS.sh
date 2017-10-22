##################################
## Oracleに接続するためのシェル
## user : sys as sysdba
## pass : oracle 
##################################

LDLIBPATH=/home/oracle/LDLIB
OPTION=$1

if [ ! `whoami` = "oracle" ];then
  echo "execute by root oracle"
  exit 1
fi

echo "###################"
echo "NOW SHUTDOWN ORACLE"
echo "###################"

${LDLIBPATH}/sqlplus -s sys/oracle@orcl12c as sysdba  << EOF 
  shutdown immediate; 
EOF

echo sleep
sleep 10

#${LDLIBPATH}/sqlplus -s sys/oracle@orcl12c as sysdba  << EOF
#shutdown immediate;
#EOF

echo "###################"
echo "NOW SHUTDOWN VIRTUALBOX"
echo "###################"

if [ ${OPTION}='r' ];then
  shutdown -r now
else
  shutdown -h now 
fi


