#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> \[quizzdep\] Quel est le département qui correspond au numéro 02 \?" | nc -q 1 localhost $po