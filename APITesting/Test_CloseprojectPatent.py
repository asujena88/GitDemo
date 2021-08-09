import requests


class Test_CloseprojectPatent:
    url = "https://airaapps.evalueserve.com/api/v1/patent/close/project/?token=apikey"

    def test18(self):
        payload = {'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f',
                   'ProjectName': 'Test',
                   'Keywords': 'Test',
                   'RequestID': '100739'}
        files = []
        headers = {}

        response = requests.request("POST", Test_CloseprojectPatent.url, headers=headers, data=payload, files=files)

        print(response.text)
