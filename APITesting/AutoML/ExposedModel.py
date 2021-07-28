import requests
{
    "apikey":"d0f4ac5d0ddf6f4a7bcedce7904f054f"
}

url = "https://airaapps.evalueserve.com/api/v1/automl/get/exposed/models/?token=eyJ0eXAiOiJqd3QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6InRlc3RAZXZhbHVlc2VydmUuY29tIiwiZXhwIjoxNjI3NTI1MjUxfQ.8OD5g6x7ToMiQF_xiHdqCt4SI8DbI77OFHSnbfWjtyQ"
resp = requests.get(url)

print(resp.url)
print(resp)

print(resp.text)
print(resp.status_code)

assert resp.status_code == 200, "Status code is not matching"
