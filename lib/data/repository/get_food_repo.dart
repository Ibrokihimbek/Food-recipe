import 'package:flutter/material.dart';
import 'package:food_edamam/service/api_service/api_service.dart';
import 'package:food_edamam/data/models/my_respon/response_model.dart';

class GetFoodRepo {
  late ApiService _apiService;

  GetFoodRepo({required ApiService apiService}) {
    _apiService = apiService;
  }

  Future<MyResponse> getFoods({
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
  }) =>
      _apiService.getFood(
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
      );
}
