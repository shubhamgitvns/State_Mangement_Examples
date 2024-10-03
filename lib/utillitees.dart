import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

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



class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state -1);
}


class CounterController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }
}