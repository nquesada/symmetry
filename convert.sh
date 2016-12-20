#!/bin/bash

iname=$1
label=$2

wc -l < $1 >$1.symm

while read line; do
    echo $2 "$line"
    
    done <$1 >> $1.symm
