import json
import requests

mydata = open("TranslateTextdata.json", "r").read()
print(type(mydata))

url = "https://airaapps.evalueserve.com/api/v1/translate/translatetext/?token=apikey"
resp = requests.post(url,data=json.loads(mydata))
print(resp.url)
print(resp)
print(resp.text)
print(resp.headers.get("Content-Type"))
assert resp.status_code == 201, "Status Code is not matching"
