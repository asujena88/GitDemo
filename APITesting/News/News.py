

import json
import requests

mydata = open("News.json", "r").read()
print(type(mydata))

url = "https://airaapps.evalueserve.com/api/v1/news/pretrained/?token=apikey"
resp = requests.post(url,data=json.loads(mydata),headers={'Content-Type': 'multipart/form-data'})

print(resp)
print(resp.text)
print(resp.status_code)
print(type(resp.content))
