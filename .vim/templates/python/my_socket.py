import socket
import os
import fcntl


def set_reuse(sock):
    sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

def set_file_nonblock(file):
    fd = file.fileno()
    flag = fcntl.fcntl(fd, fcntl.F_GETFL)
    # fcntl.fcntl(fd, fcntl.F_SETFD, flag | os.O_NONBLOCK)
    fcntl.fcntl(fd, fcntl.F_SETFL, flag | os.O_NONBLOCK)

def listen(address):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    set_reuse(s)
    s.bind(address)
    s.listen(1)
    print(s.fileno())
    return s

def main():
    address = ('', 10000)

    s = listen(address)
    # set_file_nonblock(s)

    conn, addr = s.accept()
    print('Connected by', addr )
    set_file_nonblock(conn)
    while 1:
        read_client(conn)
    conn.close()

def read_client(conn):
    try:
        data = conn.recv(1024)
        if not data:
            print("end data is '{}'".format(data) )
            raise ValueError(data)
        conn.sendall(data)
    except Exception as e:
        print(type(e))
        # if type(e) == ValueError:
        #     raise e


main()
