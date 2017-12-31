
import time

# =================== float, time_struct, str =====================
# float --> struct tuple:   time.localtime( float )
# struct time tuple --> float : time.mktime(struct_time)

# struct time tuple --> str: time.strftime(format, struct_time)
# str --> struct_time : time.strptime(str, format)


# ===================  datetime  <------> other =====================
# float --> datetime: datetime.datetime.fromtimestamp( float )

# datetime --> str: datetime.strftime(format, datetime)
# str --> datetime: datetime.strptime(str, format)

# datetime --> struct time tuple: datetime.timetuple()
# struct time tuple --> datetime: datetime(*time_tuple[0:6])


def today_day_0_hour():
    # method 1, ptime : parse time
    # time.strptime('2017-12-28 0', '%Y-%m-%d %H') ------> struct_time

    # method2, from struct_time
    # time.struct_time(tm_year=2017, tm_mon=12, tm_mday=28, tm_hour=0, tm_min=0, tm_sec=0, tm_wday=3, tm_yday=362, tm_isdst=-1)
    time_list = list( time.localtime() )        # current time
    time_list[3] = 0        # hour    ------> 0
    time_list[4] = 0        # minute  ------> 0
    time_list[5] = 0        # seconds ------> 0

    ts_0 = time.struct_time(time_list)
    # print(ts_0)
    return time.mktime(ts_0)


def generate_24_stamp():
    # 生成几天[0-23]时整的时间戳
    hour_seconds = 3600
    base = int(today_day_0_hour())
    end = base + hour_seconds * 24

    return list(range(base, end, hour_seconds))

def generate_nextday_24_stamp():
    h24 = generate_24_stamp()
    day_seconds = 60 * 60 * 24

    return [t + day_seconds for t in h24]


if __name__ == "__main__":
    # print(today_day_0_hour())
    print( generate_24_stamp() )
    print( len(generate_24_stamp()) )
    print( generate_nextday_24_stamp() )
