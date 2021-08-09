import requests

class Test_StartTraining:
  url = "https://airaapps.evalueserve.com/api/v1/automl/start/training/?token=apikey"

  def test7(self):
    payload={'Language': 'English',
    'AlgInfo': 'Count_Vectorizer,Decision_Tree',
    'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f'}
    files=[
    ('File',('Testing Data .xlsx', open('Files/Testing Data .xlsx', 'rb'), 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'))
    ]
    headers = {}

    response = requests.request("POST", Test_StartTraining.url, headers=headers, data=payload, files=files)

    print(response.text)
