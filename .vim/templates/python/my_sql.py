
import pymysql

def mysql_exam():
    conn = pymysql.connect(host='localhost', user='root', password='123456', port=3307, db='mysql')
    cursor = conn.cursor()
    cursor.execute('select * from db')

    result = cursor.fetchone()
    print(result)

mysql_exam()
