#vmstat の5秒間の結果を集計する、
# usage awk -f edit_vmstat.awk  vmstat5.txt
#  1 procs -----------memory---------- ---swap-- -----io---- -system-- ------cpu-----
#  2  r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us sy id wa st
#  3  0  0 431344  22144      8 677032   34  572  9619  1043 1759 3007 27 14 59  0  0
#  4  0  0 431344  22028      8 677036    0    0    64    32 1911 2134  0  0 100  0  0
#  5  0  0 431336  22028      8 677036    8    0     8    12 1891 2130  1  0 98  1  0
#  6  0  0 431336  22028      8 677044    0    0     0     0 1788 2080  0  0 100  0  0
#  7  4  0 431336  22028      8 677044    0    0    64    32 1841 2135  0  0 100  0  0

BEGIN {  #FS="\s"  # 空白を区切り文字にする
         #print"r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us sy id wa st"
         headersize=2
       }
       { 
         if (NR > headersize){
           print $10,$11
           bi=bi+$10
           bo=bo+$11
         }
       }
 END   { 
	print "ave =>" , bi/(NR-headersize), bo/(NR-headersize)
	}
