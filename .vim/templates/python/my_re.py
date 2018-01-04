#! /usr/bin/env python
# -*- coding: utf-8 -*-

import re


# match compile
def match_compile():
    pattern = "abc"
    flags = re.I or re.DEBUG or re.M
    cached_pattern = re.compile(pattern, flags)

    # match from string begin
    result = cached_pattern.match("abcd")                 ; print(result)
    result = cached_pattern.match("pre_abcd")             ; print(result)

    # fullmatch: from begin ------> end
    result = cached_pattern.fullmatch("abcdefg")          ; print(result)

    # search from string anyway, only match first
    result = cached_pattern.search("pre_abc_abc")         ; print(result)

    # return match string list
    result = cached_pattern.findall("pre_abc_abc")        ; print(result)

    # split string with pattern: return string list
    result = cached_pattern.split("pre_abc_sdaf_abc_sdf") ; print(result)

    # sub str
    origin = "name : crane"
    pattern = 'cr.*e'
    result = re.sub(pattern, 'Miao', origin)              ; print(result); print(origin)

    # escape string(with "\")
    result = re.escape("*asdf/\]")                        ; print(result)

    # match result's group
    pattern = "(abc).*(efg)"
    cached_pattern = re.compile(pattern, flags)
    result = cached_pattern.match("abcsdfefgasdf")
    print(result)
    print(result.group())
    print(result.group(0))
    print(result.group(1))
    print(result.group(2))


# method direct
def match_direct():
    pattern = "a.*bc"
    flags = re.I or re.DEBUG or re.M
    cached_pattern = re.match(pattern, flags)
