#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> règle de conduite et usage socialement prescrit caractérisant le comportement des individus vivant en société ou dans un groupe social. Ce sont do" | nc -q 1 localhost $po