ps -eo pmem,pcpu,pid,ppid,user,stat,args | sort -k 1 -r | head -6|sed 's/$/\n/'
