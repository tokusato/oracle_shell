
date=`date +"%Y%m%d%H%m%S"`
mkdir -p out/${date}
file_free=out/${date}/free.txt
file_sga=out/${date}/sga.txt
file_sga=out/${date}/pga.txt

function last(){
  status=$?
  echo "終了しました。 ステータス：${status}"
  echo "ファイル出力時刻：$1" 
  exit ${status}
}

#trap -lコマンドで終了コードの一覧を表示することができる。
trap "last ${date}" {1,2,3,15}

while true 
do
  free -h  | tee -a ${file_free}
  sqlplus -s sys/oracle@orcl as sysdba @sga.sql | tee -a ${file_sga}
  sqlplus -s sys/oracle@orcl as sysdba @pga.sql | tee -a ${file_pga}
  sleep 2
done



