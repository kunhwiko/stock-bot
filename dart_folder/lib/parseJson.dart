import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class Stock {
  final List<String> symbols;
  final List<String> openPrices;
  final String closePrices;

  Stock({this.symbols, this.openPrices, this.closePrices});

  factory Stock.fromJson(Map<String, dynamic> json) {
    return Stock(
        symbols: json['name'],
        openPrices: json['open_prices'],
        closePrices: json['close_prices']);
  }
}

Future<String> _readJson() async {
  return await rootBundle.loadString('assets/data.json');
}

parseJson() async{
  String jsonString = await _readJson();
  final jsonResponse = json.decode(jsonString).cast<Map<String,dynamic>>();
  return jsonResponse.map<Stock>((json)=>Stock.fromJson(json)).toList();
}
