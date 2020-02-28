#!/bin/bash


while [ 1 ];
do 
echo checking for run-away process ...

CPU_USAGE=$(uptime | cut -d"," -f4 | cut -d":" -f2 | cut -d" " -f2 | sed -e "s/\.//g")
CPU_USAGE_THRESHOLD=100
PROCESS=$(ps aux r)
TOPPROCESS=$(ps -eo pid -eo pcpu -eo command | sort -k 2 -r | grep -v PID | head -n 1 | cut -d" " -f2)

if [ $CPU_USAGE -gt $CPU_USAGE_THRESHOLD ] ; then
  kill -9 $TOPPROCESS
  echo system overloading!
  echo Top-most process killed $TOPPROCESS

else
    exit 0;
    sleep 1;
fi

done;
