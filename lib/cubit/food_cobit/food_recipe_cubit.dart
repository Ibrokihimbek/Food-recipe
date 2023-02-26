import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_edamam/data/models/food_resipe/food_recipe.dart';
import 'package:food_edamam/data/models/food_resipe/links.dart';
import 'package:food_edamam/data/models/food_resipe/next.dart';
import 'package:food_edamam/data/models/my_respon/response_model.dart';
import 'package:food_edamam/data/repository/get_food_repo.dart';

import 'food_recipe_state.dart';

class FoodRecipeCubit extends Cubit<FoodRecipeState> {
  final GetFoodRepo foodRepo;

  FoodRecipeCubit({required this.foodRepo})
      : super(
          FoodRecipeState(
            foodRecipeModel: FoodRecipeModels(
              from: 0,
              to: 0,
              count: 0,
              lLinks: Links(next: Next(href: '', title: '')),
              hits: [],
            ),
            foodsCubitStatus: FoodCubitStatus.PURE,
            errorText: '',
          ),
        );

  fetchFoods({
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
    emit(state.copyWith(foodsCubitStatus: FoodCubitStatus.LOADING));
    MyResponse myResponse = await foodRepo.getFoods(
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

    if (myResponse.error.isEmpty) {
      emit(
        state.copyWith(
          foodRecipeModel: myResponse.data,
          foodsCubitStatus: FoodCubitStatus.SUCCESS,
        ),
      );
    } else {
      emit(
        state.copyWith(
            errorText: myResponse.error,
            foodsCubitStatus: FoodCubitStatus.ERROR),
      );
    }
  }

  fetchFoodsByNextPage({required String nextPageUrl}) async {
    emit(state.copyWith(foodsCubitStatus: FoodCubitStatus.LOADING));
    MyResponse myResponse =
        await foodRepo.getFoodsNextPage(nextPageUrl: nextPageUrl);

    if (myResponse.error.isEmpty) {
      emit(
        state.copyWith(
          foodRecipeModel: myResponse.data,
          foodsCubitStatus: FoodCubitStatus.SUCCESS,
        ),
      );
    } else {
      emit(
        state.copyWith(
            errorText: myResponse.error,
            foodsCubitStatus: FoodCubitStatus.ERROR),
      );
    }
  }
}

enum FoodCubitStatus { ERROR, SUCCESS, LOADING, PURE }
