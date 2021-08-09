import json
from sys import path
import requests
from os.path import expanduser


class Test_TranslateFile:
    url = "https://airaapps.evalueserve.com/api/v1/translate/translatefile/?token=apikey"

    def test3(Self):
        payload = {
            "TranslateFrom": "English",
            "TranslateTo": "Hindi",
            "apikey": 'd0f4ac5d0ddf6f4a7bcedce7904f054f'
        }

        files = [
            ('File', ('eng.xlsx', open('Files/eng.xlsx', 'rb'),
                      'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'))
        ]
        headers = {}

        response = requests.request("POST", Test_TranslateFile.url, headers=headers, data=payload, files=files)

        print(response.text)
        assert response.status_code == 200, "Status Code is not matching"
