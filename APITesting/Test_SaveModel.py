import requests

class Test_SaveModel:
    url = "https://airaapps.evalueserve.com/api/v1/patent/save/model/?token=apikey"

    def test15(self):
        payload={'RequestID': '386f52d3d9fecdd99cbbe1eadba307fa',
        'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f'}
        files=[]
        headers = {}

        response = requests.request("POST", Test_SaveModel.url, headers=headers, data=payload, files=files)

        print(response.text)
