#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> http://www.salutcestcool.com/archives/interview-de-la-pizza.mp3" | nc -q 1 localhost $po