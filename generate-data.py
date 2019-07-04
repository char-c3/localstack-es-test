# encoding: utf-8

from datetime import datetime, timedelta

def print_ndjson(date, logstr):
    print('{"index":{"_index":"alg-log-' + date.strftime("%Y%m%d") + '","_type":"log"}}')
    print('{"message":"' + logstr + '"}')

now = datetime.now()
dates = [now - timedelta(days = x) for x in range(10)]
filename = "alb-log-sample.txt"
logstr = ""
with open(filename) as f:
    logstr = f.readline().rstrip()

for date in dates:
    print_ndjson(date, logstr)
