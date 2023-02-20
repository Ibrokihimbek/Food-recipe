import 'package:flutter/material.dart';
import 'package:food_edamam/service/api_service/api_service.dart';
import 'package:food_edamam/data/models/my_respon/response_model.dart';

class GetFoodRepo {
  late ApiService _apiService;

  GetFoodRepo({required ApiService apiService}) {
    _apiService = apiService;
  }

  Future<MyResponse> getFoods({
    required String category,
    required String health,
    required String calorie,
    required String ingrident,
  }) =>
      _apiService.getFood(
        category: category,
        health: health,
        ingrident: ingrident,
        calorie: calorie,
      );
}
