import 'package:dio/dio.dart';
import 'package:food_edamam/service/api_service/api_client.dart';
import 'package:food_edamam/data/models/food_resipe/food_recipe_model.dart';
import 'package:food_edamam/data/models/my_respon/response_model.dart';

class ApiService extends ApiClient {
  Future<MyResponse> getFood({
    required String category,
    required String health,
    required String calorie,
    required String ingredient,
  }) async {
    MyResponse myResponse = MyResponse(error: "");
    try {
      Response response = await dio.get(
        dio.options.baseUrl,
        queryParameters: getQueryParams(
          ingr: ingredient,
          health: health,
          calories: calorie,
          category: category,
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
    required String ingr,
    required String health,
    required String calories,
    required String category,
  }) {
    Map<String, dynamic> mapData = {
      'app_id': "58c04146",
      'app_key': '8e529be1284cc2aa8ffc21fcaa28a47c',
    };
    List<String> fields = [
      "ingr",
      "health",
      "calories",
      "category",
    ];

    List<dynamic> values = [
      ingr,
      health,
      calories,
      category,
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

List<DietData> list = [
  DietData(
    keyText: "balanced",
    uzbekTranslation: "Me'yorida",
    russianTranslation: "Normalniy",

  ),
];

class DietData {
  final String keyText;
  final String uzbekTranslation;
  final String russianTranslation;

  DietData({
    required this.keyText,
    required this.uzbekTranslation,
    required this.russianTranslation,
  });
}
