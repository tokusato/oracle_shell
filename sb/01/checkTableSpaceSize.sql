/*
作成した表領域TBS_SMALLの表領域サイズを調べる。
*/

●方法1 全体の表領域のサイズのみを表示するSQL
select tablespace_name, sum(bytes)/1024/1024 "size(MB)" from DBA_DATA_FILES
       where tablespace_name = 'TBS_SMALL'
       group by tablespace_name;

●方法2 表領域を構成する個々のデータファイルの情報をrollup関数で集計したもの
col TABLESPACE_NAME format a20
col FILE_NAME format a30
col size(MB) format '00000'
col TABLESPACE_NAME format a20
select tablespace_name, file_name, sum(bytes)/1024/1024 "size(MB)" from DBA_DATA_FILES
       where tablespace_name = 'TBS_SMALL'
       group by tablespace_name, rollup(file_name);



