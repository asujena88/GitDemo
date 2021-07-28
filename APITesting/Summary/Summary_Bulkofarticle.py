import json
import requests

mydata = open("Summary_Bulkofarticle.json").read()

url = "https://airaapps.evalueserve.com/api/v1/summary/bulkofarticle/?token==apikey"
resp = requests.post(url,data=mydata,headers={'Content-Type': 'multipart/form-data'})

print(resp.content)
print(resp)
print(resp.text)