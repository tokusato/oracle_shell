##################################
## Plan_hash valueをもとにSQL文の情報を出力する。
## 第一引数にシングルクォートで囲んだSQL文
## e.g. ./accessPath.sh 'select id from test;'
## 【注意事項】1回ごとにaccessPath.shを実行してexplain for をする必要あり??
##################################

## memo ⇒ v$sqlの
#SQL_TEXT	SQLの先頭1000bytes
#SORTS	SORTの回数
#FETCHES	FETCHの回数
#EXECUTIONS	実行回数
#USERS_EXECUTING	現在実行中のユーザー数
#PARSE_CALLS	解析コールの回数
#DISK_READS	ディスク読み込み数
#BUFFER_GETS	バッファ読み込み数
#ROWS_PROCESSED	SQLが戻す行数
#CPU_TIME	処理に使用したCPU時間（マイクロ秒）
#ELAPSED_TIME	処理に使用した経過時間（マイクロ秒）
#ADDRESS	ほかのViewとの結合に使用
#HASH_VALUE	ほかのViewとの結合に使用

## memo ⇒ v$sql_planの
#OBJECT_NAME     実行計画中の表、索引名
#OPERATION       実行計画オペレーション
#OPTIONS 実行計画オペレーションのオプション
#OPTIMIZER       オプティマイザのモード
#DEPTH   実行計画のTreeの深さ
#ADDRESS ほかのViewとの結合に使用
#HASH_VALUE      ほかのViewとの結合に使用


/home/oracle/LDLIB/sqlplus sys/oracle as sysdba  << EOF

col SQL_TEXT format a40
col SQL_PLAN_BASELINE format a20

col OBJECT_NAME format a20
col OPERATION format a20
col OPTIONS format a20
col OPTIMIZER format a20

SELECT sql_text, sql_id, SQL_PLAN_BASELINE, child_number FROM v\$sql where PLAN_HASH_VALUE = '$1'; 

SELECT SORTS,FETCHES,EXECUTIONS,USERS_EXECUTING,PARSE_CALLS,DISK_READS,BUFFER_GETS,ROWS_PROCESSED,CPU_TIME,ELAPSED_TIME FROM v\$sql where PLAN_HASH_VALUE = '$1'; 

SELECT OBJECT_NAME, OPERATION, OPTIONS, OPTIMIZER, DEPTH, ADDRESS, HASH_VALUE FROM v\$sql_plan where PLAN_HASH_VALUE = '$1'; 

exit

EOF

