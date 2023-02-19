import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_edamam/cubit/food_recipe_state.dart';
import 'package:food_edamam/data/models/food_resipe/food_recipe_model.dart';
import 'package:food_edamam/data/models/food_resipe/links.dart';
import 'package:food_edamam/data/models/food_resipe/next.dart';
import 'package:food_edamam/data/models/my_respon/response_model.dart';
import 'package:food_edamam/data/repository/get_food_repo.dart';
import 'package:food_edamam/service/locator/locator_service.dart';

class SingleCardsCubit extends Cubit<SingleCubitFoodRecipeState> {
  SingleCardsCubit()
      : super(
          SingleCubitFoodRecipeState(
            foodRecipeModel: FoodRecipeModels(
              text: '',
              parsed: [],
              hints: [],
              links: Links(
                next: Next(
                  title: '',
                  href: '',
                ),
              ),
            ),
            foodsCubitStatus: FoodCubitStatus.PURE,
            errorText: '',
          ),
        ) {
    _fetchCards();
  }

  _fetchCards() async {
    emit(
      state.copyWith(foodsCubitStatus: FoodCubitStatus.LOADING),
    );
    MyResponse myResponse = await appLocator.get<GetFoodRepo>().getFoods();

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
