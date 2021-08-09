import requests

class Test_GenerateAPIKey:
    url = "https://airaapps.evalueserve.com/api/v1/generate/apikey/?token=apikey"

    def test6(self):
        payload={'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f'}
        files=[]
        headers = {}

        response = requests.request("GET", Test_GenerateAPIKey.url, headers=headers, data=payload, files=files)

        print(response.text)
