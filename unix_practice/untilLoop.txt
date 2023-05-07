#!/bin/bash

num=20

until [ $num -lt 11 ]; do
	echo $num is greater than 10
	let num=$num-1

	if [ $num -eq 10 ]; then
        	echo $num equals $num!
	elif [ $num -lt 10 ]; then
        	echo $num is less than 10!
	fi
done
