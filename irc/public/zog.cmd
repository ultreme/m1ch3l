#!/usr/bin/env bash
po=$1
se=$2
ch=$3
us=$4

echo "$se 1 PRIVMSG $ch :${us}> c\'mon , m prety sure u actualy r !" | nc -q 1 localhost $po