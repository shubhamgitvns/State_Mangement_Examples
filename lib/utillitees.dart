import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _count = 0;
  int _decrement = 10;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement(){
    _count--;
    notifyListeners();
  }
}