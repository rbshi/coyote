#!/usr/bin/env python3

import socket
import threading
from time import sleep

HOST = '10.1.212.193'  # The server's hostname or IP address
# HOST = '127.0.0.1'
PORT = 5001            # The port used by the server

# with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
#     s.connect((HOST, PORT))
#     print("Connected!")
#     str_send = ''
#     for ii in range(512):
#         str_send += '8'
#     for i in range(10000):
#         s.sendall(str.encode(str_send))
#         print("send word:" + str(i))

# with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
#     s.connect((HOST, PORT))
#     str_send = ''
#     for ii in range(512):
#         str_send += '8'
#     for i in range(10000):
#         s.sendall(str.encode(str_send))
#         print("send word:" + str(i))
#         data = s.recv(512)
#         print('Received', repr(data))

token = 0

def sender(s, length, iteration):
    global token
    jj = 0

    str_send = ''
    for ii in range(length):
        str_send += str(ii % 8)
    while jj < iteration:
        if token < 16:
            s.sendall(str.encode(str_send))
            # if jj % 100 == 0:
            print("[SEND] Iteration: " + str(jj))
            token += 1
            jj += 1


def receiver(s, length, iteration):
    global token
    jj = 0
    while jj < iteration:
        if token > 0:
            data = s.recv(length)
            if not data:
                print("[NO DATA]")
                break
            # if jj % 100 == 0:
            print("[RECV]: " + str(data))
            token -= 1
            jj += 1
    s.close()

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.connect((HOST, PORT))
    print("[Connected]")

    sendThread = threading.Thread(target=sender, args=(s, 512, 256))
    receiverThread = threading.Thread(target=receiver, args=(s, 64, 256))

    receiverThread.start()
    sendThread.start()

    sendThread.join()
    receiverThread.join()
    



