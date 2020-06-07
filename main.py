from py_folder.websearch import WebSearch

def main():
    ws = WebSearch("https://finance.yahoo.com/gainers?count=100",5)
    #sym, changes = ws.web_parse()
    #ws.map_symbols(sym,changes)
    ws.api_call('a','b')


if __name__ == "__main__":
    main()