##################################
## テーブル検索のアクセスパスを出力するシェル
## 第一引数にシングルクォートで囲んだSQL文
## e.g. ./accessPath.sh 'select id from test;'
##################################

## memo

## DISPLAY_CURSOR
## テーブル・ファンクションDISPLAY_CURSORを使用して、
## カーソル・キャッシュに格納されている任意のロード済カーソルの実行計画を
## 表示することもできます。その場合、子カーソルへの参照をテーブル・ファンクションに
## 指定する必要があります。また、この指定には、文のSQL IDと子番号(オプション)も含まれます
## SQLIDを指定する場合は、以下のSQL文を実行。SQLIDの確認は、v$SQL。
## select * from table(dbms_xplan.display_cursor('SQLID',0));

## SQLSET とSQLチューニングセットに関してはまだ理解が浅く、いったんシェルから外す。
#select * from table(dbms_xplan.DISPLAY_SQLSET);
#select * from table(dbms_xplan.DISPLAY_SQL_PLAN_BASELINE);

#/home/oracle/LDLIB/sqlplus -s sys/oracle@orcl12c as sysdba  << EOF
/home/oracle/LDLIB/sqlplus -s sys/oracle@orcl12c as sysdba  << EOF

explain plan for $1
select * from table(dbms_xplan.display);
select * from table(dbms_xplan.display_cursor);

exit

EOF

