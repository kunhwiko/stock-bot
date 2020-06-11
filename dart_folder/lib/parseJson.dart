import 'package:flutter/material.dart';
import 'dart:convert';

void parseJson() {
  while(true){

    var stockData = jsonDecode('assets/data1.json')['data1'];
  }
}

class Stock {
  String time;
  double price;

  Stock(this.time, this.price);

  factory Stock.fromJson(dynamic json){
    return Stock(json['time'] as String,json['close'] as double);
  }
}

