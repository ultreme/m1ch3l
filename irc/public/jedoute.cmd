#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> mais il n\'y a pas de raison de douter, tout le monde aime les gateaux" | nc -q 1 localhost $po