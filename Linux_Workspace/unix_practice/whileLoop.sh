#!/bin/bash
# COPIED TEXT FROM whileLoop.txt
num=10

while [ $num -gt 0 ]; do
	echo $num
	let num=$num-1
	if [ $num -eq 5 ]; then
		echo $num is midway!
		break
	fi
done
