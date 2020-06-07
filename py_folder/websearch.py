import sys
import requests
import pandas as pd 
import urllib.request, urllib.parse, urllib.error
from bs4 import BeautifulSoup
from alpha_vantage.timeseries import TimeSeries

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
            sys.exit()
        
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
        res = [sym for sym in sorted(symbol_to_change.keys(),key=symbol_to_change.get,reverse=True)]
        return res[:self.count]


    def api_call(self,symbol,apikey):
        ts = TimeSeries(key='LO366YP95G58CFGT')
        data, meta_data = ts.get_intraday('AAPL', interval = '1min', outputsize = 'full')
        data = pd.Series(data)
        print(data.iloc[-1])
        print(data.keys()[-1])

    