import 'package:ajeo/core/services/category_service.dart';
import 'package:ajeo/core/services/dynamic_link_service.dart';
import 'package:ajeo/core/services/product_service.dart';
import 'package:ajeo/core/services/zone_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setUpLocator() async {
  locator.registerLazySingleton(() => CategoryService());
  locator.registerLazySingleton(() => ProductService());
  locator.registerLazySingleton(() => ZoneService());
    locator.registerLazySingleton(() => DynamicLinkService());
}
