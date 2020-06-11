import 'package:flutter/material.dart';
import 'dart:convert';

void parseJson() {

}

class Stock {
  String time;
  double price;

  Stock(this.time, this.price);

  factory Stock.fromJson(dynamic json){
    return Stock(json[''])
  }
}

