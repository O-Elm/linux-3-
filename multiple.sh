#!/bin/bash

if [[ -z $1 ]] || [[ -z $2 ]]; then
	echo "Invalid input"
	exit 1
fi

if [[ $1 -lt 0 ]] || [[ $2  -lt 0 ]]; then    
        echo "Input must be greater than 0"
        exit 1
fi

rows=$1
cols=$2

for i in $(seq 1 $rows); do
	for j in $(seq 1 $cols); do
		res=$(($i * $j))
		printf "$i*$j=$res\t"
	done
	echo ""
done
