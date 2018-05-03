import redis

def redis_exam():
    client = redis.Redis('localhost', 6379)
    client.set('name', 'crane')
    result = client.get('name')
    print(result)
    print(result.decode())

redis_exam()
