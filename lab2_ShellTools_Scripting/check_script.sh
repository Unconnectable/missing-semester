#!/usr/bin/env bash
cnt=0
echo > out.log
while true
do

    ./script.sh &>> out.log
     if [ $? -ne 0 ]; then
     cat out.log
     echo "FAILED $cnt TIMES "
     break
 fi
 ((cnt++))

done
