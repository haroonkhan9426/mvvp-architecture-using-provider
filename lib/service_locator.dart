import 'package:base_flutter_project/core/services/storage_service.dart';
import 'package:base_flutter_project/core/services/storage_service_fake.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

setupServiceLocator() {
  locator.registerLazySingleton<StorageService>(() => StorageServiceFake());
}
