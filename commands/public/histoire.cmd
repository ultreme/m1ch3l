#!/usr/bin/env python

import requests
import socket
import sys

RADIO_METADATA_URL='http://62.210.180.173:12348/?action=infos&format=json'


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

def print_current_history():
    i = 1
    for entry in requests.get(RADIO_METADATA_URL).json()['history']:
        send_irc(u'#{0} - {1}'.format(i,entry['full_title']))
        i += 1


if __name__ == '__main__':
   print_current_history()
