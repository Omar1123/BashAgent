[ -x /usr/bin/lsb_release ] &&  echo -e $(lsb_release -d|awk -F: '{print $2}'|sed -e 's/^[ \t]*//')  || echo -e $(cat /etc/system-release)

