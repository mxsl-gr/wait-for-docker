#!/bin/sh
for k in $( seq 1 180 )
do
  nc -z 192.168.0.148 80
  if [ $? -ne 0 ]; then
    echo "wait...$k"
    sleep 1
  else 
    echo ok
    break
  fi
done
$1
