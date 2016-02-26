#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> gajeb t\'enduit le corps de fromage, te fait griller au four et te mange étalé sur du pain" | nc -q 1 localhost $po