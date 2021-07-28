import json
import requests

mydata = open("Summary_linkofarticle.json").read()

url = "https://airaapps.evalueserve.com/api/v1/summary/linkofarticle/?token==apikey"
resp = requests.post(url,data=mydata,headers={'Content-Type': 'multipart/form-data'})

print(resp.content)
print(resp)
print(resp.text)
#assert resp.status_code == 201, "Status Code is not matching"
