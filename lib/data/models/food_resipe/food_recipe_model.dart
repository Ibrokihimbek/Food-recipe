import 'package:food_edamam/data/models/food_resipe/hint.dart';

class FoodRecipeModels {
  FoodRecipeModels({
    required this.text,
    required this.parsed,
    required this.hints,
  });

  String text;
  List<dynamic> parsed;
  List<Hint> hints;

  factory FoodRecipeModels.fromJson(Map<String, dynamic> json) =>
      FoodRecipeModels(
        text: json["text"],
        parsed: List<dynamic>.from(json["parsed"].map((x) => x)),
        hints: List<Hint>.from(json["hints"].map((x) => Hint.fromJson(x))),
      );
}

