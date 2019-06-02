#!/bin/bash
echo "PWD: "$PWD
echo $0
while true
do
sleep 5
RESULT=`ps -e |grep 'python'|sed -e "/grep/d"` 
if [ -z "$RESULT" ];then
echo "Start"

if [ -d $1 ]; then
echo $1" Exist"
else
echo $1" Not Exist"
exit
fi

cd $1
echo $PWD

if [ -e $PWD"/common.py" ];then
python common.py
else
echo $PWD"/common.txt Not Exist"
exit
fi

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

python train.py > log.txt 2>&1 &
cd ..
break
fi
done

sleep 10
while true
do
sleep 5
RESULT=`ps -e |grep 'python'|sed -e "/grep/d"` 
if [ -z "$RESULT" ];then
echo "Finished"
for((i=1;i<=5;i++))
do
	echo -e "\a"
	sleep 1
done
break
fi
done
