#!/usr/bin/env bash

po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> si tu veux m'parler envoie moi un FAX!" | nc -q 1 localhost $po
