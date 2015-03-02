#!/usr/bin/env python

import socket
import sys


def send_irc(what):
    port = int(sys.argv[1])
    server = sys.argv[2]
    chan = sys.argv[3]
    user = sys.argv[4]
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.connect(('localhost', port))
    print sock.send('{0} 1 PRIVMSG {1} :{2} -> {3}\n'.format(server, chan, user, what))
    sock.close()

def hello():
    args = sys.argv[4:]
    if not len(args):
        send_irc('salut tout court')
    else:
        for mek in args:
            send_irc('salut {0}'.format(mek))

if __name__ == '__main__':
   hello()
