import requests


class Test_LoadWipProject:
    url = "https://airaapps.evalueserve.com/api/v1/patent/load/wipprojects/?token=apikey"

    def test16(self):
        payload = {'RequestID': '386f52d3d9fecdd99cbbe1eadba307fa',
                   'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f'}
        files = []
        headers = {}

        response = requests.request("POST", Test_LoadWipProject.url, headers=headers, data=payload, files=files)

        print(response.text)
