import sys
if sys.version_info[0] == 2:
    from Queue import Queue
    print("python2")
if sys.version_info[0] == 3:
    from queue import Queue
    print("python3")
else:
    raise ValueError("version info Error")
