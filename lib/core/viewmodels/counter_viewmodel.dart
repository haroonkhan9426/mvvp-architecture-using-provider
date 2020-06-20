import 'package:flutter/foundation.dart';

/// CounterVM (CounterViewModel)
class CounterVM extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
