#!/usr/bin/env bash
cntFile=".showcnt.txt"
epFile="epFile.txt"
rm -rf cashou*
wget -O cashout.sh https://gist.githubusercontent.com/ralph-pichler/3b5ccd7a5c5cd0500e6428752b37e975/raw/cashout.sh && chmod 777 cashout.sh
sed -i 's/10000000000000000/1/g' cashout.sh
tCnt=`cat $cntFile`
for ((i=1; i<=tCnt; i ++))
do
cp cashout.sh cashout${i}.sh
sed -i "s/1635/$((1634+${i}))/g" cashout${i}.sh
echo "cashout${i}.sh文件已生成至当前目录"
done
