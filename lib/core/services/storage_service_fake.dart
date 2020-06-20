import 'package:base_flutter_project/core/services/storage_service.dart';

class StorageServiceFake extends StorageService {
  @override
  Future<int> getCounterValue() {
    Future.delayed(Duration(seconds: 2), () => 11);
  }

  @override
  Future<void> saveCounterValue() {}
}
