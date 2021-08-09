import requests


class Test_UpdateIndTag:
    url = "https://airaapps.evalueserve.com/api/v1/patent/update/indtag/?token=apikey"

    def test13(self):
        payload = {'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f',
                   'Un_pub_number': 'CN104597243A',
                   'Relevance_tag': 'Relevant',
                   'RequestID': '386f52d3d9fecdd99cbbe1eadba307fa'}
        files = []
        headers = {}

        response = requests.request("POST", Test_UpdateIndTag.url, headers=headers, data=payload, files=files)

        print(response.text)
