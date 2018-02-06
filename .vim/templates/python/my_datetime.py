import datetime
import time
# from datetime import datetime
# from datetime import timedelta


def test1():
    # timepoint1 = datetime.datetime(2018, 13, 11, 23, 56)       # ValueError, month must in [1..12]
    timepoint1 = datetime.datetime(2018, 12, 11, 23, 56)
    timepoint2 = datetime.datetime(2018, 1, 12, 23, 56)

    print(timepoint1)
    print(timepoint1.year)
    print(timepoint1.month)
    print(timepoint1.minute)

    print(timepoint1 < timepoint2)

def test2():
    timepoint1 = datetime.datetime(2018, 12, 11, 22, 56)

    delta1 = datetime.timedelta(minutes=5)
    delta2 = datetime.timedelta(days=2)

    print(timepoint1 + delta1)
    print(timepoint1 + delta2)

def test_now_stamp():
    d1 = datetime.datetime.now()
    # ts = 20123412343
    ts = 0
    d2 = datetime.datetime.utcfromtimestamp(ts)    # utc
    d3 = datetime.datetime.fromtimestamp(ts)       # localtime, ts经过0个tick, 当地已经8点
    print(d1)
    print(d2)
    print(d3)

# test1()
# test2()
test_now_stamp()

# NOTE: utc时间和当地时间(timestamp都相同)
# datetime.datetime.utcfromtimestamp
# time.localtime(0)
# 1: datetime: fromtimestamp vs utcfromtimestamp, now() vs utcnow()
datetime.datetime.utcfromtimestamp(0)
datetime.datetime.fromtimestamp(0)

print(datetime.datetime.utcnow())
print(datetime.datetime.now())

# 2: date: from datetime
datetime.datetime.now().date()
datetime.datetime.utcnow().date()

datetime.datetime.utcfromtimestamp(0).date()
datetime.datetime.fromtimestamp(0).date()

# 3: time: localtime vs gmtime
print(time.gmtime(0))
print(time.localtime(0))
print(time.localtime())
