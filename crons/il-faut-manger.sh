#!/usr/bin/env bash

po=3112
se=freenode
ch=\#salutcestcool

echo "$se 1 PRIVMSG $ch :Astuce: n'oublie pas d'aller manger, c'est bientôt l'heure\!" | nc -q 1 localhost $po
