import threading

def do_add():
    print("do_add")

def main():
    t1 = threading.Thread(target = do_add, args = ())
    t1.start()

    # threading.Timer is a subclass of threading.Thread
    t = threading.Timer(1, do_add)
    t.start()
