#!/bin/bash
z=$(ps aux)
while read -r l
do
    if echo $l | grep jmxremote.port > /dev/null
    then jmxport=$(echo $l | sed 's/.*jmxremote.port\=*\([0-9]\{1,\}\).*/\1/');
       pid=$(echo $l | awk '{print $2}');
       date=$(echo $l | awk '{print $5}');
       echo pid is $pid, jmx port is $jmxport, start process date is $date
    fi
done <<< "$z"
