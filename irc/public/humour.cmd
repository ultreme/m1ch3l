#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> C\'est un mec qui rentre dans un café et plouf" | nc -q 1 localhost $po