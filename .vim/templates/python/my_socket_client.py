import socket


def main():
    print("start main")

    addr = ('127.0.0.1', 9999)
    my_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    my_socket.connect(addr)

    buf_size = 1024
    my_socket.send(b"I'm client")
    data = my_socket.recv(buf_size)
    print(data)


if __name__ == "__main__":
    main()
