import 'package:dio/dio.dart';
import 'package:food_edamam/data/api_service/api_client.dart';
import 'package:food_edamam/data/models/food_resipe/food_recipe_model.dart';
import 'package:food_edamam/data/models/my_respon/response_model.dart';

class ApiService extends ApiClient {
  Future<MyResponse> getAllCards() async {
    MyResponse myResponse = MyResponse(error: "");
    try {
      Map<String, String> queryParams = {
        'app_id': "58c04146",
        'app_key': '8e529be1284cc2aa8ffc21fcaa28a47c',
        'ingr': 'carrot',
        'health': 'vegetarian',
        'calories': '100-300',
        'category': 'generic-foods',
      };
      Response response =
          await dio.get(dio.options.baseUrl, queryParameters: queryParams);
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        myResponse.data = FoodRecipeModels.fromJson(response.data);
      }
    } catch (err) {
      myResponse.error = err.toString();
    }

    return myResponse;
  }
}
