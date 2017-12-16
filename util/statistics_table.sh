
if [ $# = 0 ];then 
	echo less arguments. '$1 schema' '$2 tablename'
	exit 1
fi

echo "EXEC DBMS_STATS.GATHER_TABLE_STATS(OWNNAME=>'$1',TABNAME=>'$2',CASCADE=>TRUE);"


