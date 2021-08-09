import requests


class Test_CloseProject:
    url = "https://airaapps.evalueserve.com/api/v1/automl/close/project/?token=apikey"

    def test11(self):
        payload = {'ProjectID': 'PID100137',
                   'ProjectName': 'XYZ',
                   'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f',
                   'Keywords': 'XYZ'}
        files = []
        headers = {}

        response = requests.request("POST", Test_CloseProject.url, headers=headers, data=payload, files=files)

        print(response.text)
