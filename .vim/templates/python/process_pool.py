import time
from concurrent.futures import ProcessPoolExecutor, ThreadPoolExecutor


def fib(n):
    if n<= 2:
        return 1
    return fib(n-1) + fib(n-2)


def process_pool():
    numbers = range(25, 30)
    start = time.time()
    with ProcessPoolExecutor(max_workers=3) as executor:
    # with ThreadPoolExecutor(max_workers=3) as executor:
        for num, result in zip(numbers, executor.map(fib, numbers)):
            print('fib({}) = {}'.format(num, result))

    end = time.time()
    print('COST: {}'.format(end - start))


def stream_run():
    start = time.time()

    for i in range(25, 34):
        print('fib({}) = {}'.format(i, fib(i)))

    end = time.time()
    print('COST: {}'.format(end - start))


process_pool()
# stream_run()
