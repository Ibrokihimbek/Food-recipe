import 'package:food_edamam/data/models/food_resipe/food.dart';

class Hint {
  Hint({
    required this.food,
  });

  Food food;

  factory Hint.fromJson(Map<String, dynamic> json) => Hint(
        food: Food.fromJson(json["food"] ?? {}),
      );
}