#!/bin/sh
echo -n "wait $1:$2..."
for k in $( seq 1 180 )
do
  nc -z $1 $2
  if [ $? -ne 0 ]; then
    echo -n .
    sleep 1
  else 
    echo ok
    break
  fi
done
$3
