#!/usr/bin/env bash

po=3112
se=freenode
ch=\#salutcestcool

echo "$se 1 PRIVMSG $ch :Bonjour du matin, aujourd'hui, il fait beau et c'est bien." | nc -q 1 localhost $po
