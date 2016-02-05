#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> https://www.youtube.com/watch\?v=0CwEFa0nnO 4" | nc -q 1 localhost $po