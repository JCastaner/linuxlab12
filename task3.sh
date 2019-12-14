#!/bin/bash
if [[ $# -eq 0 ]]
then
echo 'Use ./task3.sh {limit}'
exit 1
fi

df | awk '$6 == "/"' |awk '{gsub(/%/,"",$5)}1' |awk -v a=$1 'a < $5 {print "Disk is getting full!"}'
exit 0
