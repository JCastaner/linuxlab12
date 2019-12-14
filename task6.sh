#!/bin/bash

dir=$1
backUpNum=$2

for f in $dir*.txt; do
i=$backUpNum

while [ $i -ge 1 ]; do
echo cp $f.$((i-1)).bak $f.$i.bak $dir
i=$((i-1))
done

echo cp $f $f.0.bak $dir
done
