import 'package:flutter/material.dart';

class CountNotifier extends ChangeNotifier {
  int _counter = 0;

  int get getcount => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }
}