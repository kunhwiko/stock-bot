from py_folder.websearch import WebSearch
import time 
import json

def main():
    # 'finance.yahoo.com/gainers' for most gaining stocks
    # 'finance.yahoo.com/most-active' for most active stocks
    ws = WebSearch("https://finance.yahoo.com/gainers?count=100")
    symbols, changes = ws.web_parse()
    sorted_symbols = ws.map_symbols(symbols,changes)

    # stores the opening price upon application start time
    # dynamically update the most recent closing price  
    start = [True] * 5 
    open_prices = []
    recent_closes = [0] * 5

    while True :
        for i in range(len(sorted_symbols)):
            # input keycode from Alpha Vantage
            json_extract = ws.api_call(sorted_symbols[i],'LO366YP95G58CFGT')

            if start[i] == True:
                open_prices.append(ws.get_open_price(json_extract))
                start[i] = False 
            data, recent_close = ws.cleanse_json(json_extract)
            recent_closes[i] = recent_close 

            # create an image for the Flutter app to retreive
            ws.plot(data, './dart_folder/assets/image' + str(i+1), i)
        
        # create a json format data for the Flutter app to retrieve
        ws.create_json(sorted_symbols,open_prices,recent_closes, './dart_folder/assets/data.json')

        # retrieves new data and updates every 1 min 
        time.sleep(60)
    
if __name__ == "__main__":
    main()