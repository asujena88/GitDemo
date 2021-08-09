import requests


class Test_TopicModel:
    url = "https://airaapps.evalueserve.com/api/v1/topic/modler/?token=apikey"

    def test4(self):
        payload = {'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f'}
        files = [
            ('File', ('TopicModel.xlsx', open('Files/TopicModel.xlsx', 'rb'),
                      'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'))
        ]
        headers = {}

        response = requests.request("POST", Test_TopicModel.url, headers=headers, data=payload, files=files)

        print(response.text)
