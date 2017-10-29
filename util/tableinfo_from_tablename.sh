##################################
## 特定のテーブルの情報(インデクスindexも含む)を出力する。
## 第一引数にテーブル名(テーブル名は大文字小文字を区別するため、注意)
## e.g. ./tablespace_from_table.sh TEST
##################################

if [ -z $1 ]; then
	echo "引数としてテーブル名を想定しています。"
	exit 1
fi

#WHERE ut.TABLE_NAME = '$1' and us.SEGMENT_NAME = '$1';
#WHERE ut.TABLE_NAME = '$1' ;
#  us.SEGMENT_NAME,
#  WHERE ut.TABLE_NAME = '$1';
#  TABLE_NAME = '$1' 
#and 
#  user_tables.TABLE_NAME = user_ind_columns.TABLE_NAME  ;
#/home/oracle/LDLIB/sqlplus sys/oracle as sysdba  << EOF
/home/oracle/LDLIB/sqlplus sys/oracle@orcl12c as sysdba  << EOF

col TABLE_NAME format a15
col TABLESPACE_NAME format a20
col SEGMENT_NAME format a25
col COMPRESSION format a10
col COMPRESS_FOR format a10
col INDEX_NAME format a10
col COLUMN_NAME format a10

show con_name

SELECT 
  ut.TABLE_NAME, 
  ut.TABLESPACE_NAME, 
  us.SEGMENT_NAME,
  us.SEGMENT_TYPE,
  us.EXTENTS,
  ut.BLOCKS,
  ut.PCT_FREE,
  ut.PCT_USED, 
  ut.NUM_ROWS,
  ut.BUFFER_POOL,
  ut.SEGMENT_CREATED,
  ut.COMPRESSION, 
  ut.COMPRESS_FOR, 
  ut.ROW_MOVEMENT,
  ui.INDEX_NAME,
  ui.COLUMN_NAME
FROM (user_tables ut inner join user_ind_columns ui
  ON ut.TABLE_NAME = ui.TABLE_NAME )
    inner join USER_SEGMENTS us
    ON ut.TABLESPACE_NAME = us.TABLESPACE_NAME 
    WHERE ut.TABLE_NAME = '$1' and us.SEGMENT_NAME = '$1';
exit

EOF

