#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> gajeb \[2/2\] \(courant\), nom, fr : nom du plus beau membre, le chanteur, du groupe éponyme" | nc -q 1 localhost $po