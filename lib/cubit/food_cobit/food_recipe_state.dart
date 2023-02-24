import 'package:equatable/equatable.dart';
import 'package:food_edamam/data/models/food_resipe/food_recipe.dart';

import 'food_recipe_cubit.dart';

class FoodRecipeState extends Equatable {
  final FoodRecipeModels foodRecipeModel;
  final FoodCubitStatus foodsCubitStatus;
  final String errorText;
  const FoodRecipeState({
    required this.foodRecipeModel,
    required this.foodsCubitStatus,
    required this.errorText,
  });
  FoodRecipeState copyWith({
    FoodRecipeModels? foodRecipeModel,
    FoodCubitStatus? foodsCubitStatus,
    String? errorText,
  }) =>
      FoodRecipeState(
        foodsCubitStatus: foodsCubitStatus ?? this.foodsCubitStatus,
        foodRecipeModel: foodRecipeModel ?? this.foodRecipeModel,
        errorText: errorText ?? this.errorText,
      );

  @override
  List<Object?> get props => [
        foodRecipeModel,
        foodsCubitStatus,
        errorText,
      ];
}