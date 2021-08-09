import requests

class Test_News:
  url = "https://airaapps.evalueserve.com/api/v1/news/pretrained/?token=apikey"

  def test5(self):
    payload={'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f',
    'Language': 'English'}
    files=[
    ('File',('test_api_english.xlsx', open('Files/test_api_english.xlsx', 'rb'), 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'))
    ]
    headers = {}

    response = requests.request("POST", Test_News.url, headers=headers, data=payload, files=files)

    print(response.text)
