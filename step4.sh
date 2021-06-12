#!/usr/bin/env bash
cntFile=".showcnt.txt"
epFile="epFile.txt"
rm -rf cashout*
wget -O cashout.sh https://gist.githubusercontent.com/ralph-pichler/3b5ccd7a5c5cd0500e6428752b37e975/raw/cashout.sh && chmod 777 cashout.sh
sed -i 's/10000000000000000/1/g' cashout.sh
ep=`cat $epFile`
tCnt=`cat $cntFile`
let tCnt++
echo $tCnt > $cntFile
cp cashout.sh cashout${tCnt}.sh
sed -i "s/1635/$((1634+${tCnt}))/g" cashout${tCnt}.sh
echo "cashout${tCnt}.sh文件已生成至当前目录"
#bee start --config node${tCnt}.yaml


