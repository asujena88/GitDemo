import requests


class Test_Summary_Originalarticle:
    url = "https://airaapps.evalueserve.com/api/v1/summary/originalarticle/?token==apikey"

    def test20(self):
        payload = {'Line': '2',
                   'Language': 'English',
                   'Type': 'AIRA',
                   'Method': '{}',
                   'apikey': 'd0f4ac5d0ddf6f4a7bcedce7904f054f',
                   'Article': 'Robot Framework is a generic open source automation framework. It can be used for test automation and robotic process automation (RPA).Robot Framework is actively supported, with many industry-leading companies using it in their software development.Robot Framework is open and extensible and can be integrated with virtually any other tool to create powerful and flexible automation solutions. Being open source also means that Robot Framework is free to use without licensing costs.'}
        files = []
        headers = {}

        response = requests.request("POST", Test_Summary_Originalarticle.url, headers=headers, data=payload,
                                    files=files)

        print(response.text)
