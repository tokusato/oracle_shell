#!/bin/bash
# 定義ファイル読み込み
. /home/oracle/commonConfig.txt

create pfile='/tmp/init.ora' from spfile;
