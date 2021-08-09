import requests


class Test_StarttrainingPatent:
    url = "https://airaapps.evalueserve.com/api/v1/patent/start/training/?token=apikey"

    def test12(self):
        payload = {'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f',
                   'Language': 'English'}
        files = [
            ('File', ('Patent_RNR_Template.xlsx', open(
                'Files/Patent_RNR_Template.xlsx',
                'rb'), 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'))
        ]
        headers = {}

        response = requests.request("POST", Test_StarttrainingPatent.url, headers=headers, data=payload, files=files)

        print(response.text)
        print(response.status_code)
