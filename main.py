from py_folders.websearch import WebSearch

def main():
    ws = WebSearch("https://finance.yahoo.com/gainers?count=100",5)
    ws.web_parse()

if __name__ == "__main__":
    main()