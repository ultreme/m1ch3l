#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> gajeb \[1/2\] \(courant\), nom, fr : groupe de popo punk très en vogue dans les maisons de retraite et thé dansant." | nc -q 1 localhost $po