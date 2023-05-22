#!/bin/bash

names=('Joe' 'Rob' 'Kim' 'Pam' 'Fad')

for name in "${names[@]}"; do
	echo $name
done

echo Names: ${names[@]}
