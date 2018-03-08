#!/bin/bash

../../xgboost mushroom.conf nthread=$1 &

sleep 5

process_id=`/bin/ps -aux | grep "xgboost" | grep -v "grep" | grep -v "bash" | awk '{print $2}'`

#echo $process_id

cd /proc/$process_id/task

i=0
for entry in *
do
	/usr/bin/taskset -pc $i $entry
	((i=$i+1))
done
