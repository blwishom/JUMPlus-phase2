#!/bin/bash

WORDS=()
echo WORDS before append: ${WORDS[@]}
echo Enter a word:
read word1

echo Enter a word:
read word2

echo Enter a word:
read word3

echo Enter a word:
read word4

WORDS+=($word1 $word2 $word3 $word4)
echo WORDS after append: ${WORDS[@]}

for w in ${WORDS[@]}; do
    echo $w
done | sort

# for w in ${WORDS[@]}; do
#     echo $w
# done | sort | grep and
