#!/bin/bash

cat /etc/passwd | awk -F ":" -v a=$1 '$3 > a'

#I was here! -gituser1
