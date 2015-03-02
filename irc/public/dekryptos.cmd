#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from kryptos import send_irc, dekryptos
import sys


if __name__ == '__main__':
    send_irc('Dekryptos: '.format(dekryptos(' '.join(sys.argv[5:]))))
