#!/bin/bash

a=$(sed 's/:/\n/g' <<< "$PATH")

for i in $a; do
total=$(find $i -maxdepth 1 -type f -executable -print | wc -l)

echo $i:$total
done
