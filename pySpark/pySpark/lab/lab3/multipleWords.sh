#!/bin/bash

echo "Type a word:"
read word1

echo "Type a different word:"
read word2

echo "Type one last word:"
read word3

WORDS=($word1 $word2 $word3)

echo "Here are your sorted words:"
for word in ${WORDS[@]}; do echo $word; done | sort
