import 'package:get_it/get_it.dart';
import 'package:state_api/services/api.dart';
import 'package:state_api/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => Api());
}