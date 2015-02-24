#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> tu commence par des étirements ensuite tu enfile un sarouel bariolé des dreads et puis tu te concote un petit look urban streetwear tu peux commence" | nc -q 1 localhost $po