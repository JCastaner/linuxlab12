#!/bin/bash

a=$(ls -d */ | grep lab)

for i in $a; do
mv $i Linux$i
done
