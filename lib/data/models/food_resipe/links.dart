import 'package:food_edamam/data/models/food_resipe/next.dart';

class FoodRecipeModelsLinks {
  FoodRecipeModelsLinks({
    required this.next,
  });

  Next next;

  factory FoodRecipeModelsLinks.fromJson(Map<String, dynamic> json) =>
      FoodRecipeModelsLinks(
        next: Next.fromJson(json["next"]),
      );
}