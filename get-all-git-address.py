#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2017 crane <crane@crane-pc>
#
# Distributed under terms of the MIT license.

"""

"""

import os

path = ".vim/bundle/"
# mod_file = open("./.gitmodules", "w")

def has_user_name(address):
    fields_cnt = len( address.split('/') )
    assert  1 <= fields_cnt <= 2

    if ( fields_cnt == 2):
        return True
    else:
        return False

def print_submodule(short, real):
    # print(short)
    # print(real)
    # path = .vim/bundle/a
    # url = https://github.com/csliu/a.vim
    lay_path = path + short

    # print(lay_path)
    # print(real)

    os.system("git submodule add %s %s" % (real, lay_path))


"""
    mod_file.write('[submodule "%s"]\n' % lay_path)
    mod_file.write('    path = %s\n' % lay_path)
    mod_file.write('    url  = %s\n' % real)
    mod_file.write('\n')
"""
def get_last_name(short):
    return short.split('/')[-1]

def main():
    f = open("./plugins.txt")

    for l in f:
        if l.startswith("#") or len(l) <= 1:       # 跳过注释
            continue

        splited_string = l.strip().split('"')
        # 列表最后一个元素为''空字符串
        short_address = splited_string[-2]

        githubPrefix = "https://github.com/"
        vimPrefix    = githubPrefix + "vim-scripts/"

        if short_address.startswith("http"):
            # oschina git or other git
            real_address = short_address

        elif has_user_name(short_address):
            real_address  =  githubPrefix + short_address

        else:
            real_address = vimPrefix + short_address


        short_address = short_address.split('/')[-1]
        print_submodule(short_address, real_address)

if __name__ == "__main__":
    main()
