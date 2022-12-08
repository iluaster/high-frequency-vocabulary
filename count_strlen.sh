#!/bin/bash
declare -i len
for i in `cat 30k.txt`
do
	for j in `fold -w 1 <(echo $i)`
	do
		((len++))	
	done
	echo "${len} : ${i}"
	len=0
done
