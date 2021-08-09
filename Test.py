import requests
import json


class Test_API:
    base_url = "https://forecastlens-api.apps-evalueserve.com/v1/api/"
    headers = {'Content-Type': 'application/json'}

    def pretty_print_request(request):
        print('\n{}\n{}\n\n{}\n\n{}\n'.format(
            '-----------Request----------->',
            request.method + ' ' + request.url,
            '\n'.join('{}: {}'.format(k, v) for k, v in request.headers.items()),
            request.body)
        )

    def pretty_print_response(response):
        print('\n{}\n{}\n\n{}\n\n{}\n'.format(
            '<-----------Response-----------',
            'Status code:' + str(response.status_code),
            '\n'.join('{}: {}'.format(k, v) for k, v in response.headers.items()),
            response.text)
        )

    def test_region_api(self):
        region_url = Test_API.base_url + "region_list"
        print("region_url =" + region_url)
        resp = requests.get(region_url)
        print(resp.status_code)
        assert resp.status_code == 200
        print(resp.json())
        assert resp.text.__contains__("APAC")
        Test_API.pretty_print_request(resp.request)
        Test_API.pretty_print_response(resp)

    def test_user_details(self):
        userData = {
            "mail_id": "Rakesh.Das@evalueserve.com",
            "username": "tom",
            "role": "admin",
            "authenticated": "true"
        }
        print(userData)
        userData = json.dumps(userData)
        userData = json.loads(userData)
        print(type(userData))
        print(userData)
        user_details_url = Test_API.base_url + "user_details"
        print("user_details_url =" + user_details_url)
        resp = requests.post(url=user_details_url, json=userData)
        print(resp.status_code)
        assert resp.status_code == 200
        print(resp.json())
