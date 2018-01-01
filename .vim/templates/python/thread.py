#! /usr/bin/env python
# -*- coding: utf-8 -*-

import threading, time, random


def main():
    t1 = threading.Thread(target = do_add, args = ())
    t1.start()
