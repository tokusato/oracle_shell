/*
複数のデータファイルからスモールファイル表領域を作成する。
*/
create tablespace TBS_SMALL datafile 
  '/u01/app/oracle/oradata/orcl12c/orcl/original/datafile01' size 100M, 
  '/u01/app/oracle/oradata/orcl12c/orcl/original/datafile02' size 100M,
  '/u01/app/oracle/oradata/orcl12c/orcl/original/datafile03' size 100M;

