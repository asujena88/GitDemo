import requests


class Test_TagRemaining:
    url = "https://airaapps.evalueserve.com/api/v1/patent/tag/remaining/?token=apikey"

    def test14(self):
        payload = {'RequestID': '386f52d3d9fecdd99cbbe1eadba307fa',
                   'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f'}
        files = [
            ('Data', ('Patent_RNR_Template.xlsx', open('Files/Patent_RNR_Template.xlsx', 'rb'),
                      'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'))
        ]
        headers = {}

        response = requests.request("POST", Test_TagRemaining.url, headers=headers, data=payload, files=files)

        print(response.text)
