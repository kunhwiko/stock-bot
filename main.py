from py_folder.websearch import WebSearch
import time 
import json

def main():
    ws = WebSearch("https://finance.yahoo.com/gainers?count=100")
    symbols, changes = ws.web_parse()
    sorted_symbols = ws.map_symbols(symbols,changes)
    
    # stores the opening price upon application start time 
    start = [True] * 5 
    open_prices = []

    while True :
        for i in range(len(sorted_symbols)):
            json_extract = ws.api_call(sorted_symbols[i],'LO366YP95G58CFGT')
            if start[i] == True:
                open_prices.append(ws.get_open_price(json_extract))
                start[i] = False 
            data = ws.cleanse_json(json_extract)
            ws.plot(data, './dart_folder/assets/image' + str(i+1), i)
        # retrieves new data every 1 min 
        time.sleep(60)
    
if __name__ == "__main__":
    main()