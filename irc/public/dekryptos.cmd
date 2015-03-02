#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import socket
import sys


mapping = {
    'a': '¡',
    'b': '¢',
    'c': '£',
    'd': '¤',
    'e': '¥',
    'f': '¦',
    'g': '§',
    'h': '¨',
    'i': 'ª',
    'j': '«',
    'k': '¬',
    'l': '®',
    'm': '¯',
    'n': '°',
    'o': '©',
    'p': '±',
    'q': '²',
    'r': '³',
    's': '´',
    't': 'µ',
    'u': '¶',
    'v': '·',
    'w': '¸',
    'x': '¹',
    'y': 'º',
    'z': '»',
    'A': '¼',
    'B': '½',
    'C': '¾',
    'D': '¿',
    'E': 'À',
    'F': 'Á',
    'G': 'Â',
    'H': 'Ã',
    'I': 'Ä',
    'J': 'Å',
    'K': 'Æ',
    'L': 'Ç',
    'M': 'È',
    'N': 'É',
    'O': 'Ê',
    'P': 'Ë',
    'Q': 'Ì',
    'R': 'Í',
    'S': 'Î',
    'T': 'Ï',
    'U': 'Ð',
    'V': 'Ñ',
    'W': 'Ò',
    'X': 'Ó',
    'Y': 'Ô',
    'Z': 'Õ',
    '0': 'Ö',
    '1': '×',
    '2': 'Ø',
    '3': 'Ù',
    '4': 'Ú',
    '5': 'Û',
    '6': 'Ü',
    '7': 'Ý',
    '8': 'Þ',
    '9': 'ß',
}


inv_mapping = {v: k for k, v in mapping.items()}


def decryptos(string):
    output = ''
    for i in range(len(string)):
        output += inv_mapping.get(string[i], string[i])
    return output


def kryptos(string):
    output = ''
    for i in range(len(string)):
        output += mapping.get(string[i], string[i])
    return output


def send_irc(what):
    port = int(sys.argv[1])
    server = sys.argv[2]
    chan = sys.argv[3]
    user = sys.argv[4]
    s = u'{0} 1 PRIVMSG {1} :{2} -> {3}\n'.format(server, chan, user, what)
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.connect(('localhost', port))
    sock.send(s.encode('utf-8'))
    sock.close()


if __name__ == '__main__':
    send_irc('Dekryptos: {}'.format(dekryptos(' '.join(sys.argv[5:]))))
