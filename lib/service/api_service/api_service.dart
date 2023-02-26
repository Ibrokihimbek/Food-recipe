import 'package:dio/dio.dart';
import 'package:food_edamam/service/api_service/api_client.dart';
import 'package:food_edamam/data/models/food_resipe/food_recipe.dart';
import 'package:food_edamam/data/models/my_respon/response_model.dart';

class ApiService extends ApiClient {
  Future<MyResponse> getFood({
    required String q,
    required String ingr,
    required String diet,
    required String health,
    required String cuisineType,
    required String mealType,
    required String dishType,
    required String calories,
    required String time,
    required String excluded,
  }) async {
    MyResponse myResponse = MyResponse(error: "");
    try {
      Response response = await dio.get(
        dio.options.baseUrl,
        queryParameters: getQueryParams(
          q: q,
          ingr: ingr,
          diet: diet,
          health: health,
          cuisineType: cuisineType,
          mealType: mealType,
          dishType: dishType,
          calories: calories,
          time: time,
          excluded: excluded,
        ),
      );
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        myResponse.data = FoodRecipeModels.fromJson(response.data);
      }
    } catch (err) {
      myResponse.error = err.toString();
    }

    return myResponse;
  }

  Future<MyResponse> getFoodsFromUrl({required String nextPageUrl}) async {
    MyResponse myResponse = MyResponse(error: "");
    try {
      Response response = await dio.get(nextPageUrl);
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        myResponse.data = FoodRecipeModels.fromJson(response.data);
      }
    } catch (err) {
      myResponse.error = err.toString();
    }

    return myResponse;
  }

  Map<String, dynamic> getQueryParams({
    required String q,
    required String ingr,
    required String diet,
    required String health,
    required String cuisineType,
    required String mealType,
    required String dishType,
    required String calories,
    required String time,
    required String excluded,
  }) {
    Map<String, dynamic> mapData = {
      'app_id': "79938d09",
      'app_key': '2462944001f95ce03ec469b4fbac657b',
      'type': 'public',
      'imageSize': 'REGULAR'
    };
    List<String> fields = [
      'q',
      'ingr',
      'diet',
      'health',
      'cuisineType',
      'mealType',
      'dishType',
      'calories',
      'time',
      'excluded',
    ];

    List<dynamic> values = [
      q,
      ingr,
      diet,
      health,
      cuisineType,
      mealType,
      dishType,
      calories,
      time,
      excluded,
    ];

    for (int i = 0; i < values.length; i++) {
      if (values[i].isNotEmpty) {
        mapData[fields[i]] = values[i];
      }
    }
    print("RESULT:$mapData");
    return mapData;
  }
}

