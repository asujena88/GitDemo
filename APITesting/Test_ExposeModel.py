import requests

class Test_ExposeModel:
    url = "https://airaapps.evalueserve.com/api/v1/automl/expose/model/?token=apikey"

def test9():
    payload={'ProjectID': 'PID100137',
    'ModelID': '7b78839470e28e20fabe0a77cf4bac34',
    'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f'}
    files=[]
    headers = {}

    response = requests.request("POST", Test_ExposeModel.url, headers=headers, data=payload, files=files)

    print(response.text)
