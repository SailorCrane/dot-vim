#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 crane <crane@crane-pc>
#
# Distributed under terms of the MIT license.

"""
文件名不要和dis模块相同
"""

from dis import dis
# import dis


def show_dis(command):
    c = compile(command, '', 'exec')
    dis(c)

def main():
    print("start main")
    show_dis("1 == 1")

if __name__ == "__main__":
    main()
