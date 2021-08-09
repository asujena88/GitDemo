import requests
import json

url = "https://airaapps.evalueserve.com/api/v1/summary/bulkofarticle/?token==apikey"

# payload = ("apikey",("d0f4ac5d0ddf6f4a7bcedce7904f054f") ),
# ("Language",("English")),
# ("Type",("AIRA")),
# ("Method",("{'semiabstractive': 'true', 'abstractive': 'true', 'entities': 'true'}")),
#            }
files = [
    ("File", ("bulkurl.xlsx", open("..//Files//bulkurl.xlsx", "rb"),
              "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")),
("apikey",("d0f4ac5d0ddf6f4a7bcedce7904f054f") ),
("Language",("English")),
("Type",("AIRA")),

]
headers = {"Content-Type": "multipart/form-data"}


response = requests.request("POST", url, headers= headers, files=files)
print(response.text)
print(response.status_code)
