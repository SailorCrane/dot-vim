import socketserver

class MyTCPHandler(socketserver.BaseRequestHandler):
    def handle(self):
        # self.request is the TCP socket connected to the client
        # self.request.setblocking(False)
        while True:
            print("custome handle")
            self.data = self.request.recv(1024)
            print("data is {%s}" % self.data)
            if not self.data:
                return

            print("{0} {1} wrote:".format(self.client_address[0], self.client_address[1]))
            print(self.data)
            # just send back the same data, but upper-cased
            self.request.sendall(self.data.upper())


class MyTcp(socketserver.ForkingTCPServer):
# class MyTcp(socketserver.ThreadingTCPServer):
    daemon_threads = False
    allow_reuse_address = True


if __name__ == "__main__":
    HOST, PORT = "localhost", 9999

    server = MyTcp((HOST, PORT), MyTCPHandler)
    server.serve_forever()      # loop
    # server.handle_request()   # handle once, sort connection
