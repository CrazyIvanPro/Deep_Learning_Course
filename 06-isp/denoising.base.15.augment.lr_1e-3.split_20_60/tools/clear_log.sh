#!/bin/bash
echo "PWD: "$PWD
echo $0

if [ -e $PWD"/log.txt" ];then
echo $PWD"/log.txt Exist"
rm -r log.txt
else
echo $PWD"/log.txt Not Exist"
fi

if [ -e $PWD"/train_log" ];then
echo $PWD"/train_log Exist"
rm -r train_log
else
echo $PWD"/train_log Not Exist"
fi

if [ -e $PWD"/output" ];then
echo $PWD"/output Exist"
rm -r output
else
echo $PWD"/output Not Exist"
fi
