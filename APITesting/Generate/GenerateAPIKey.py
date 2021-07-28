import requests

url = "https://airaapps.evalueserve.com/api/v1/generate/apikey/?token=eyJ0eXAiOiJqd3QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6InRlc3RAZXZhbHVlc2VydmUuY29tIiwiZXhwIjoxNjI3MDI0NjYxfQ.oGIF3U_uiz4jRiPiMusFLWNJw96TQMAA9tnBE4thJWc"
resp = requests.get(url)

print(resp.url)
print(resp)

print(resp.text)
print(resp.status_code)

assert resp.status_code == 200, "Status code is not matching"
