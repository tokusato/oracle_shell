##################################
## Oracleに接続するためのシェル
## user : sys as sysdba
## pass : oracle 
##################################

LDLIBPATH=/home/oracle/LDLIB
OPTION=$1


echo "###################"
echo "NOW SHUTDOWN ORACLE"
echo "###################"

${LDLIBPATH}/sqlplus -s sys/oracle@orcl12c as sysdba  << EOF

shutdown immediate;

EOF

echo "###################"
echo "NOW SHUTDOWN VIRTUALBOX"
echo "###################"

if [ ${OPTION}='r' ];then
  shutdown -r now
else
  shutdown -h now 
fi


