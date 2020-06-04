import requests
import urllib.request, urllib.parse, urllib.error
from bs4 import BeautifulSoup

class WebSearch():

    def __init__(self, website, count):
        # website represents the site to scrap
        # count represents the number of companies to retrieve 
        self.website = website 
        self.count = count 

    def web_parse(self):
        # retrieve website to parses 
        url = requests.get(self.website)
        html = urllib.request.urlopen(url).read()
        soup = BeautifulSoup(html,"html.parser")

        