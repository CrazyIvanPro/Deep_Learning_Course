#!/bin/bash
echo "Running tasks in: "$2 
cat $2 | while read line
do
sleep 5
echo $line
bash tools/copy_single.sh $1 $line
done
