
/*
2方式について共通するのは、既存の表領域に対して加える変更のため、alter tablespace文を利用すること
*/


●新規にデータファイルを追加する方式
alter tablespace TBS_SMALL add datafile '/oracle_datafile2/tbs_small04.dbf' size 100M;

●既存のデータファイルを拡張する方式
alter database datafile '/oracle_datafile1/tbs_small01.dbf' resize 125M;
alter database datafile '/oracle_datafile1/tbs_small02.dbf' resize 125M;
alter database datafile '/oracle_datafile2/tbs_small03.dbf' resize 125M;
