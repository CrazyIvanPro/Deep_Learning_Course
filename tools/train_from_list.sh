#!/bin/bash
echo "Running tasks in: "$1 
cat $1 | while read line
do
sleep 5
echo $line
bash tools/train_single.sh $line
done