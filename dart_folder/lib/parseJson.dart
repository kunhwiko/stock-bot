import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class Stock {
  String time;
  double price;

  Stock(this.time, this.price);

  factory Stock.fromJson(dynamic json){
    return Stock(json['time'] as String,json['close'] as double);
  }
}

Future<String> getFile(String path) async {
  return await rootBundle.loadString(path);
}

void buildList(){

}

