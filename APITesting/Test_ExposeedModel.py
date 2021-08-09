import requests

class Test_ExposeedModel:
    url = "https://airaapps.evalueserve.com/api/v1/automl/get/exposed/models/?token=apikey"

    def test10(self):
        payload={'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f'}
        files=[]
        headers = {}

        response = requests.request("GET", Test_ExposeedModel.url, headers=headers, data=payload, files=files)

        print(response.text)
        print(response.status_code)

        assert response.status_code == 200, 'Status code is not matching'
