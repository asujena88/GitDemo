import requests
import json


class Test_Summary_linkofarticle:
    url = "https://airaapps.evalueserve.com/api/v1/summary/linkofarticle/?token==apikey"

    def test19(self):
        payload = {
            "apikey": 'd0f4ac5d0ddf6f4a7bcedce7904f054f',
            "Language": "English",
            "Line": "1",
            "Link": "https://www.foxnews.com/media/obama-compares-trump-dictator-suppresses-journalists-own-admin-targeted-reporters",
            "Method": "",
            "Type": "AIRA"
        }

        headers = {"Content-Type": "application/json"}

        response = requests.request("POST", Test_Summary_linkofarticle.url, headers=headers, data=json.dumps(payload))

        print(response.text)
