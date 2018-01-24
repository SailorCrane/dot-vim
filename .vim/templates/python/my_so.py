from ctypes import *


so_path = '/lib/x86_64-linux-gnu/libc.so.6'
fun_name = 'printf'
def load_so(so_path):
    lib = cdll.LoadLibrary(so_path)    # 加载动态链接库
    return lib


def load_so_func(so_path, fun_name):
    lib = cdll.LoadLibrary(so_path)    # 加载动态链接库
    fun = getattr(lib, fun_name)
    return fun
