#!/usr/bin/env bash
cntFile=".showcnt.txt"
epFile="epFile.txt"
tCnt=`cat $cntFile`
for ((i=1; i<=tCnt; i ++))
do
./cashout${i}.sh
done
