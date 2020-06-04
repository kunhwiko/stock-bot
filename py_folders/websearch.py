import requests

class WebSearch():

    def __init__(self, website, count):
        self.website = website 
        self.count = count 

    def web_parse(self):
        web_request = requests.get(self.website)
        html = web_request.text
        print(html) 
