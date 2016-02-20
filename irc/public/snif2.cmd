#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> http://i.skyrock.net/7748/76747748/pics/2982934181_1_3_T126dB3O.jpg" | nc -q 1 localhost $po