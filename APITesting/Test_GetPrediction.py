import requests

class Test_GetPrediction:
  url = "https://airaapps.evalueserve.com/api/v1/automl/get/prediction/?token=apikey"

  def test8(self):
    payload={'ProjectID': 'PID100137',
    'ModelID': '7b78839470e28e20fabe0a77cf4bac34',
    'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f'}
    files=[
    ('File',('Testing Data .xlsx', open('Files/Testing Data .xlsx', 'rb'), 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'))
    ]
    headers = {}

    response = requests.request("POST", Test_GetPrediction.url, headers=headers, data=payload, files=files)

    print(response.text)
