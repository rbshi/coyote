#!/usr/bin/env python3

import socket

HOST = ''  # Standard loopback interface address (localhost)
PORT = 5001        # Port to listen on (non-privileged ports are > 1023)

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.bind((HOST, PORT))
    s.listen()
    print("[START] Port:", str(PORT))
    conn, addr = s.accept()
    with conn:
        print("[Connected] ", addr)
        ii = 0
        while True:
            data = conn.recv(512)
            if not data:
                print("[END]")
                break
            # print("[RECV] " + str(data))
            conn.send(data[0:64])
            # print("[SEND] " + str(data[0:64]))