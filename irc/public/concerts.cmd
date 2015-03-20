#!/usr/bin/env bash

po=$1
se=$2
ch=$3
us=$4


curl http://www.salutcestcool.com/koncert/ | \
    grep Dans\ le\ futur -A 15 | \
    grep '^<br>' | \
    sed 's/^<br>//' | \
    while read line; do
    echo "$se 1 PRIVMSG $ch : $line" | nc -q 1 localhost $po
done
