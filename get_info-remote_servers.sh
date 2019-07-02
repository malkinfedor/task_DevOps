for server in $(cat server.txt)
do
# ssh "$server" "bash -s -- z=$(ps aux); while read -r l; do; if echo $l | grep jmxremote.port > /dev/null; then jmxport=$(echo $l | sed 's/.*jmxremote.port\=*\([0-9]\{1,\}\).*/\1/'); pid=$(echo $l | awk '{print $2}'); date=$(echo $l | awk '{print $5}'); echo pid is $pid, jmx port is $jmxport, start process date is $date ; fi;"
 ssh "$server" 'bash -s' < /home/susin/get_info.sh

done
