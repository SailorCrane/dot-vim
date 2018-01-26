import socket
import os
import fcntl


def set_reuse(sock):
    sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

def set_file_nonblock(file):
    ''' 可以在创建socket时指定socket.SOCK_NONBLOCK标志'''
    fd = file.fileno()
    flag = fcntl.fcntl(fd, fcntl.F_GETFL)
    # fcntl.fcntl(fd, fcntl.F_SETFD, flag | os.O_NONBLOCK)
    fcntl.fcntl(fd, fcntl.F_SETFL, flag | os.O_NONBLOCK)

def listen(address, is_block = True):
    '''默认阻塞'''
    if not is_block:
        flags = socket.SOCK_STREAM | socket.SOCK_NONBLOCK
    else:
        flags = socket.SOCK_STREAM
    s = socket.socket(socket.AF_INET, flags)

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


if __name__ == "__main__":
    main()
