class Stock {
  final String symbols;
  final double openPrices;
  final double closePrices;

  Stock({this.symbols, this.openPrices, this.closePrices});

  factory Stock.fromJson(Map<String, dynamic> json) {
    return Stock(
        symbols: json['name'] as String,
        openPrices: json['open_price'] as double,
        closePrices: json['closed_price'] as double);
  }
}

