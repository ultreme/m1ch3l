#!/usr/bin/env bash

po=$1
se=$2
ch=$3
us=$4

size=$(echo "$RANDOM % 2 + 3" | bc)
bite=""
while [ $size -gt 0 ]
do
    bite="${bite}="
    size=$(echo $size - 1 | bc)
done
bite="${bite}]"

if [ "$us" = "moul" ]; then
    bite="==========================================================================================================]"
fi
if [ "$us" = "ouimerci" ]; then
    bite="---]"
fi
if [ "$us" = "croute" ]; then
    bite="t'as pas de dent, t'es une croute"
fi

echo "$se 1 PRIVMSG $ch :${us}> $bite" | nc -q 1 localhost $po
