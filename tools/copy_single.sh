if [ -d $1 ]; then
echo $1" Exist"
else
echo $1" Not Exist"
exit
fi

cp -r $1 $2
cd $2
echo $PWD
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
