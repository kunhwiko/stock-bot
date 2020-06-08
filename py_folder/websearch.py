import sys
import requests
import pandas as pd 
import urllib.request, urllib.parse, urllib.error
from bs4 import BeautifulSoup
from alpha_vantage.timeseries import TimeSeries

class WebSearch():

    def __init__(self, website):
        # website represents the site to scrape
        self.website = website 

    # parse website to search 5 stocks 
    def web_parse(self):       
        symbol, changes = [], []

        # retrieve website to parse (approx 1000 stock data)
        for i in range(9):
            offset = 100 * i
            html = urllib.request.urlopen(self.website + "&offset=" + str(offset)).read()
            soup = BeautifulSoup(html,"html.parser")

            # retrieve company symbols and their daily change in stock
            for stock in soup.find_all('tr',attrs = {'class':'simpTblRow'}):
                for sym in stock.find_all('td',attrs = {'aria-label':'Symbol'}):
                    symbol.append(sym.text)
                for ch in stock.find_all('td',attrs = {'aria-label':'Change'}):
                    changes.append(float(ch.text))
        
        return symbol, changes


    # find 'count' number of symbols with the highest changes 
    def map_symbols(self, symbol, changes):
        # create a hash map mapping symbol to changes
        symbol_to_change = {}
        for i in range(len(symbol)):
            symbol_to_change[symbol[i]] = changes[i]

        # sort symbols by highest changes  
        sorted_syms = [sym for sym in sorted(symbol_to_change.keys(),key=symbol_to_change.get,reverse=True)]
        return sorted_syms[:5]


    def api_call(self,symbol,apikey):
        ts = TimeSeries(key=apikey)
        data, meta_data = ts.get_intraday('AAPL', interval = '1min', outputsize = 'full')

        # Consider using JSON file
        data = pd.Series(data)
        print(data.iloc[-1])
        print(data.keys()[-1])

    