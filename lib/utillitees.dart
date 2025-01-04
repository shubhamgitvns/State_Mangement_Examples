import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners(); // Notify listeners to rebuild UI
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}
