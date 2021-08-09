import requests


class Test_GetWipProject:
    url = "https://airaapps.evalueserve.com/api/v1/patent/get/wipprojects/?token=apikey"

    def test17(self):
        payload = {'Username': 'test@evalueserve.com',
                   'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f'}
        files = []
        headers = {}

        response = requests.request("POST", Test_GetWipProject.url, headers=headers, data=payload, files=files)

        print(response.text)
