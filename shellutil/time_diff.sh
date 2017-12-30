t1='01:00'
t2='03:20'
diff=$(expr `date -d"$t2" +%s` - `date -d"$t1" +%s`)
echo "$diff"秒


time1=`date`
sleep 5 
time2=`date`
diff=$(expr `date -d"$time2" +%s` - `date -d"$time1" +%s`)
echo "$diff"秒
