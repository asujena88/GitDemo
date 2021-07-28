import json
import requests

mydata = open("TranslateFile.json", "r")
valid_payload = {
    "TranslateFrom": "English",
    "TranslateTo": "Hindi",
    "File": mydata,
    "apikey": 'd0f4ac5d0ddf6f4a7bcedce7904f054f'
}
url = "https://airaapps.evalueserve.com/api/v1/translate/translatefile/?token=apikey"
resp = requests.post(url=url,  headers={'Content-Type': 'multipart/form-data'},files= valid_payload)

print(resp.content)
print(resp)
print(resp.text)
# assert resp.status_code == 201, "Status Code is not matching"
