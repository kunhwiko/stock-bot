import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class Stock {
  final List<String> data;

  Stock(this.data);

  factory Stock.fromJson(Map<String, dynamic> json){
    return Stock(data : parsedJson['data']);
  }
}

Future<String> _loadJson(String path) async {
  return await rootBundle.loadString(path);
}

Future parseJson(String path) async {
  String jsonString = await _loadJson(path);
  return jsonString;
}
