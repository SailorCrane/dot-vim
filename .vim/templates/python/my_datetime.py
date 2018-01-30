import datetime
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
    d2 = datetime.datetime.fromtimestamp(20123412343)
    print(d1, d2)

test1()
test2()
test_now_stamp()
