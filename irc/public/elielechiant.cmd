#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> \[59aada8d@gateway/web/freenode/ip.89.170.218.141\]" | nc -q 1 localhost $po