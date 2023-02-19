import 'package:equatable/equatable.dart';
import 'package:food_edamam/cubit/food_recipe_cubit.dart';
import 'package:food_edamam/data/models/food_resipe/food_recipe_model.dart';

class SingleCubitFoodRecipeState extends Equatable {
  final FoodRecipeModels foodRecipeModel;
  final FoodCubitStatus foodsCubitStatus;
  final String errorText;
  const SingleCubitFoodRecipeState({
    required this.foodRecipeModel,
    required this.foodsCubitStatus,
    required this.errorText,
  });
  SingleCubitFoodRecipeState copyWith({
    FoodRecipeModels? foodRecipeModel,
    FoodCubitStatus? foodsCubitStatus,
    String? errorText,
  }) =>
      SingleCubitFoodRecipeState(
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