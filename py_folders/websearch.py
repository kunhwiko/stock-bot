import requests
import urllib.request, urllib.parse, urllib.error
from bs4 import BeautifulSoup

class WebSearch():

    def __init__(self, website, count):
        # website represents the site to scrape
        # count represents the number of companies to retrieve 
        self.website = website 
        self.count = count 

    # parse website to search up to 5 stocks 
    def web_parse(self):
        # make sure to retrieve at max 5 stocks
        if self.count > 5:
            return

        # retrieve website to parse
        html = urllib.request.urlopen(self.website).read()
        soup = BeautifulSoup(html,"html.parser")

        # retrieve company symbols and their daily change in stock
        symbol = []
        changes = []

        for stock in soup.find_all('tr',attrs = {'class':'simpTblRow'}):
            for sym in stock.find_all('td',attrs = {'aria-label':'Symbol'}):
                symbol.append(sym.text)
            for ch in stock.find_all('td',attrs = {'aria-label':'Change'}):
                changes.append(ch.text)


                



        