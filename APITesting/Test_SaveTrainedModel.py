import requests
import json


class Test_SaveTrainedModel:
    url = "https://airaapps.evalueserve.com/api/v1/automl/save/trainedmodel/?token=apikey"

    def test1(self):
        payload = {'ModelID': 'beadce6bdf0c1d7fbab649adb35d5b41',
               'ProjectID': 'PID100140',
               'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f'}

         # headers = {"Content-Type: application/json"}
         # headers=headers,

        response = requests.request("POST", Test_SaveTrainedModel.url, data=payload)

        print(response.text)
