#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> Je sais que cette lettre vous parviendra telle une surprise, pour la raison que nous ne nous connaissons pas encore, mais soyez rassuré.  Je ne viens" | nc -q 1 localhost $po