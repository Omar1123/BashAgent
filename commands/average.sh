echo -e " $(uptime|grep -o "load average.*"|awk '{print $3" " $4" " $5}')"
