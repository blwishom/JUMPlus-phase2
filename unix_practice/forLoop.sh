#!/bin/bash

# names=('Joe' 'Rob' 'Kim' 'Pam' 'Fad')
# echo Names:
# for name in "${names[@]}"; do
# 	echo $name
# done

# echo Names: ${names[@]}

# echo Numbers:
# numbers=(1 2 3 4 5 6 7 8 9 0)

# for num in ${numbers[@]}; do
# 	echo $num
# done


fruits=(apple strawberry orange pineapple lemon)

echo Fruits:

for fruit in ${fruits[@]}; do
	echo $fruit
done | sort
