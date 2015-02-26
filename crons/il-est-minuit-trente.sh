#!/usr/bin/env bash

po=3112
se=freenode
ch=\#salutcestcool

echo "$se 1 PRIVMSG $ch :*******ALERTE-ALERTE-ALERTE-ALERTE**********" | nc -q 1 localhost $po
echo "$se 1 PRIVMSG $ch :Il est 00:29." | nc -q 1 localhost $po
echo "$se 1 PRIVMSG $ch :*******FIN-DE-L-ALERTE**********************" | nc -q 1 localhost $po
