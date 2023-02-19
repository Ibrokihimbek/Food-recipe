import 'package:food_edamam/data/repository/get_food_repo.dart';
import 'package:food_edamam/service/api_service/api_service.dart';
import 'package:get_it/get_it.dart';

final appLocator = GetIt.instance;

Future<void> locatorSetUp() async {
  var apiService = ApiService();
  appLocator.registerLazySingleton(
    () => GetFoodRepo(
      apiService: apiService,
    ),
  );
}
