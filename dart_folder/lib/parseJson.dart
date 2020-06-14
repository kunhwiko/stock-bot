class Stock {
  final String symbols;
  final String openPrices;
  final String closePrices;

  Stock({this.symbols, this.openPrices, this.closePrices});

  factory Stock.fromJson(Map<String, dynamic> json) {
    return Stock(
        symbols: json['name'] as String,
        openPrices: json['open_prices'] as String,
        closePrices: json['close_prices'] as String);
  }
}

