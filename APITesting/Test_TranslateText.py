import requests


class Test_TranslateText:
    url = "https://airaapps.evalueserve.com/api/v1/translate/translatetext/?token=apikey"

    def test2(self):
        payload = {'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f',
                   'OriginalText': 'My name is Asutosh',
                   'TranslateFrom': 'English',
                   'TranslateTo': 'Hindi'}
        files = []
        headers = {}

        response = requests.request("POST", Test_TranslateText.url, headers=headers, data=payload, files=files)

        print(response.text)
        print(response.status_code)
        # assert response.status_code == 200, "Status Code is not matching"
