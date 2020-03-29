##################################
## Oracleに接続するためのシェル
## user : sys as sysdba
## pass : oracle 
##################################

USER=sys
PASSWORD=oracle
DEFAULT_SERVICE=`lsnrctl status  | grep 'Default Service' | awk '{print $3}'`

if [ ${DEFAULT_SERVICE} ="" ];then
  echo "cannot get service name which listener recognize. please execute lsnrctl status"
  exit 1
fi

echo "now connecting to DEFAULT SERVICE ${DEFAULT_SERVICE} by user sys"

sqlplus ${USER}/${PASSWORD}@${DEFAULT_SERVICE} as sysdba

