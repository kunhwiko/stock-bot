from py_folder.websearch import WebSearch
import time 
import json

def main():
    ws = WebSearch("https://finance.yahoo.com/gainers?count=100")
    sym, changes = ws.web_parse()
    sorted_syms = ws.map_symbols(sym,changes)
    
    while True :
        for i in range(len(sorted_syms)-1):
            json_extract = ws.api_call(sorted_syms[i],'LO366YP95G58CFGT')
            data = ws.cleanse_json(json_extract)
            ws.plot(data, './dart_folder/assets/image' + str(i+1), i)
        # retrieves new data every 1 min 
        time.sleep(60)
    
if __name__ == "__main__":
    main()