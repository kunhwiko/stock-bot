from py_folder.websearch import WebSearch
import time 
import json

def main():
    ws = WebSearch("https://finance.yahoo.com/gainers?count=100")
    sym, changes = ws.web_parse()
    sorted_syms = ws.map_symbols(sym,changes)
    
    while True :
        for i in range(len(sorted_syms)):
            json_file = ws.api_call(sorted_syms[i],'LO366YP95G58CFGT')
            with open("./dart_folder/assets/data" + str(i+1) + ".txt",'w') as output:
                json.dump(json_file,output)
        # retrieves new data every 1 min 
        time.sleep(60)
    
if __name__ == "__main__":
    main()