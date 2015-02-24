#!/usr/bin/env bash

po=$1
se=$2
ch=$3
us=$4

IFS="
"
for line in $(banner "BON ANNIV")
do
    echo "$se 1 PRIVMSG $ch :$line" | nc -q 1 localhost $po
done
