#!/bin/bash
# while true; do clear; sensors|grep 'fan1\|CPU' ; c=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}'); echo "CPU ${c:0:5}%";a=$((jq -n "$(free -m | awk '/Speicher/{print $3}')"/"$(free -m | awk '/Speicher/{print $2}')"*100) );echo "Mem ${a:0:5}%";echo -n  "AVG "; echo  "$(cut -d" " -f1 /proc/loadavg )*100"|bc;sleep 3; done

while true; do 
    if read -t 0; then # Input ready
        read -r -n 1 char
        echo -e "\nRead: ${char}\n"
        break
        fi
    clear;
    # sensors|grep 'fan1\|CPU' ; c=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}');

    c=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}'); 
    echo "CPU ${c:0:4} %";
    
    sleep 3;
done

# chmod +x bash_monitor.sh
# ./bash_monitor.sh
# bash +x ./bash_monitor.sh
# NOT used sh - different execute
# sh +x ./bash_monitor.sh