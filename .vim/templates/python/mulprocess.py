# coding: utf-8

from multiprocessing import Process

def getpid():
    import os
    return os.getpid()


def task(msg):
    print("hello {}, I'm {}".format(msg, getpid()))
    import time
    time.sleep(1)


def process_1():
    p = Process(target=task, args=('world',))

    p.start()
    if p.is_alive():
        print('Process: %s is running' % p.pid)
        print('main is %s' % getpid())
    p.join()
