#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> https://youtu.be/Jyeehl8DMfs\?t=183" | nc -q 1 localhost $po