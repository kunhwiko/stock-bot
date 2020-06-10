from py_folder.websearch import WebSearch
import time 
import json

def main():
    ws = WebSearch("https://finance.yahoo.com/gainers?count=100")
    sym, changes = ws.web_parse()
    sorted_syms = ws.map_symbols(sym,changes)
    
    while True :
        for stock in sorted_syms:
            json_file = ws.api_call(stock,'LO366YP95G58CFGT')
            with open('data.txt','w') as output:
                json.dump(json_file,output)

        # retrieves new data every 1 min 
        time.sleep(60)
    
        



if __name__ == "__main__":
    main()