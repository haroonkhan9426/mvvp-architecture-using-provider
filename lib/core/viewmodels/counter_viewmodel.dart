import 'package:base_flutter_project/core/services/storage_service.dart';
import 'package:flutter/foundation.dart';
import 'package:base_flutter_project/service_locator.dart';

/// CounterVM (CounterViewModel)
class CounterVM extends ChangeNotifier {
  StorageService storageService = locator<StorageService>();
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
