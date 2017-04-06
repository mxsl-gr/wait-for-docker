#!/bin/sh
for k in $( seq 1 180 )
do
  nc -z $1 $2
  if [ $? -ne 0 ]; then
    echo "wait $1:$2...$k"
    sleep 1
  else 
    echo ok
    break
  fi
done
$3
