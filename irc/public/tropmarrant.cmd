#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> https://www.youtube.com/watch\?v=77Yld8M_YBU" | nc -q 1 localhost $po