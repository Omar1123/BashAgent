echo -e ""$(grep -w SwapTotal /proc/meminfo|awk '{print $2/1024}')", in GiB : "$(grep -w SwapTotal /proc/meminfo|awk '{print $2/1024/1024}')
