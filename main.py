from py_folder.websearch import WebSearch

def main():
    ws = WebSearch("https://finance.yahoo.com/gainers?count=100")
    sym, changes = ws.web_parse()
    sorted_syms = ws.map_symbols(sym,changes)
    
    for stock in sorted_syms:
        ws.api_call(stock,'LO366YP95G58CFGT')



if __name__ == "__main__":
    main()