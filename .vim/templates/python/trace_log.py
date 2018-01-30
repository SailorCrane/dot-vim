def trace_log(func):
    def wrapper(*args, **kwargs):
        result = func(*args, **kwargs)
        print("%s(%r, %r) ---> %r" % (func.__name__, args, kwargs, result))
        return result

    return wrapper


@trace_log
def test(a):
    return a + 1
