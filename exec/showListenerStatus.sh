#!/bin/bash
# 定義ファイル読み込み
. /home/oracle/commonConfig.txt

## リスナーの状態を表示する。
echo '################  lsnrctl status  ################'
${LIB}/lsnrctl status

## リスナーに登録されているサービス名を表示する。
echo '################  lsnrctl services  ################'
${LIB}/lsnrctl services 

## tnsリスナーの設定ファイル表示
echo '################  'cat $ORACLE_HOME/network/admin/tnsnames.ora'  ################'
#cat \$ORACLE_HOME/network/admin/tnsnames.ora
cat /u01/app/oracle/product/12.2/db_1/network/admin/tnsnames.ora

## tnsリスナーの設定ファイル表示
echo '################  'cat $ORACLE_HOME/network/admin/sqlnet.ora'  ################'
#cat \$ORACLE_HOME/network/admin/tnsnames.ora
cat /u01/app/oracle/product/12.2/db_1/network/admin/sqlnet.ora




