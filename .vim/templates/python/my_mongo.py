import pymongo

def mongo():
    client = pymongo.MongoClient('localhost')

    # db + table
    db = client['newtestdb']
    table = db['table']

    table.insert({'name' : 'Bob'})
    record = table.find_one( {'name' : 'Bob'} )
    print(record)

# mongo()
