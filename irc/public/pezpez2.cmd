#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> JE PESE DANS LE CHAT ET SI CA TE PLAIT PAS MOI CA M\'INDIFFERE" | nc -q 1 localhost $po