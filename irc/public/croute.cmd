#!/usr/bin/env bash

po=$1
se=$2
ch=$3
us=$4

size=$(echo "$RANDOM % 6 + 2" | bc)
bite=""
while [ $size -gt 0 ]
do
    bite="${bite}@(3#@$"
    size=$(echo $size - 1 | bc)
done
bite="${bite}P"

if [ "$us" = "croute" ]; then
    bite="t'as pas de croute, t'es une croute"
fi

echo "$se 1 PRIVMSG $ch :${us}> $bite" | nc -q 1 localhost $po
