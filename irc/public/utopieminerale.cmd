#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> Oublions  notre  point  de  vue  situé  d’être  humain,   d’être  vivant,  d’être  terrestre  même  et  supposons   à titre d’expérienc" | nc -q 1 localhost $po