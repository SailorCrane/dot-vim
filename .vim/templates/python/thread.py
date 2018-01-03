#! /usr/bin/env python

import threading

def do_add():
    pass

def main():
    t1 = threading.Thread(target = do_add, args = ())
    t1.start()
