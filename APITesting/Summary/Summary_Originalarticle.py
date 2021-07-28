import json
import requests

mydata = open("Summary_Originalarticle.json").read()

url = "https://airaapps.evalueserve.com/api/v1/summary/originalarticle/?token==apikey"
resp = requests.post(url, data=mydata, headers={'Content-Type': 'application/json'})

print(resp.content)
print(resp)
print(resp.text)
assert resp.status_code == 200, "Status code is not matching"
print(resp.headers.values())
print(resp.cookies)
