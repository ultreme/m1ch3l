#!/usr/bin/env bash

po=$1
se=$2
ch=$3
us=$4

text="Merci Kévin pour ce super jeu multijoueur: http://www.salutcestcool.com/quatre/multijoueur/"

echo "$se 1 PRIVMSG $ch :${us}> $text" | nc -q 1 localhost $po
