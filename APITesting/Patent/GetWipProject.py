import json
import requests

mydata = open("GetWipProject.json")
a = json.load(mydata)
print(a)

url = "https://airaapps.evalueserve.com/api/v1/patent/get/wipprojects/?token=apikey"
resp = requests.post(url=url, data=a, headers={'Content-Type': 'multipart/form-data'})

print(resp)
print(resp.text)
print(resp.status_code)
print(type(resp.content))
