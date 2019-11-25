#! /usr/bin/env python3
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2017 crane <crane@crane-pc>
#
# Distributed under terms of the MIT license.

"""

"""

from __future__ import  print_function
import subprocess


global_profile_file = "/tmp/vim-tmp-time.txt"

def gen_profile_file():

    p = subprocess.Popen(
        [
            "vim",
            "--startuptime",
            global_profile_file,
            "-c",
            "quit"
        ],
    )
    p.communicate()


def rm_profile_file():

    p = subprocess.Popen(
        [
            "rm",
            "-rf",
            global_profile_file,
        ],
    )
    p.communicate()


def get_line_time_filename(line):
    seg = line.strip().split()
    if not seg:
        return False

    try:
        # mtime = seg[0].split('.')[0]
        mtime = seg[0]
        mtime = float(mtime)

        file = seg[-1]
        if not file.startswith("/"):
            return False
    except :
        return False

    return mtime, file


def stat_profile():
    f = open(global_profile_file)

    stat_value = {}  # {file : time_span, level}

    last_mfile = 0
    for line in f:
        rv = get_line_time_filename(line)
        if not rv:
            continue

        mtime, file = rv
        # print("===: ", mtime, file, sep=" ")


    f.close()


def main():
    print("start main")
    rm_profile_file()
    gen_profile_file()

    stat_profile()

if __name__ == "__main__":
    main()
