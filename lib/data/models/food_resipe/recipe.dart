import 'package:food_edamam/data/models/food_resipe/digest.dart';
import 'package:food_edamam/data/models/food_resipe/ingridient.dart';

class Recipe {
  Recipe({
    required this.uri,
    required this.label,
    required this.image,
    required this.source,
    required this.url,
    required this.shareAs,
    required this.recipeYield,
    required this.healthLabels,
    required this.cautions,
    required this.ingredientLines,
    required this.ingredients,
    required this.calories,
    required this.totalWeight,
    required this.totalTime,
    required this.digest,
  });

  String uri;
  String label;
  String image;
  String source;
  String url;
  String shareAs;
  num recipeYield;
  List<String> healthLabels;
  List<String> cautions;
  List<String> ingredientLines;
  List<Ingredient> ingredients;
  num calories;
  num totalWeight;
  num totalTime;
  List<Digest> digest;

  factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        uri: json["uri"] as String? ?? '',
        label: json["label"] as String? ?? '',
        image: json["image"] as String? ?? '',
        source: json["source"] as String? ?? '',
        url: json["url"] as String? ?? '',
        shareAs: json["shareAs"] as String? ?? '',
        recipeYield: json["yield"] as num? ?? 0.0,
        healthLabels: List<String>.from(json["healthLabels"].map((x) => x)),
        cautions: List<String>.from(json["cautions"].map((x) => x)),
        ingredientLines:
            List<String>.from(json["ingredientLines"].map((x) => x)),
        ingredients: List<Ingredient>.from(
            json["ingredients"].map((x) => Ingredient.fromJson(x))),
        calories: json["calories"] as num? ?? 0.0,
        totalWeight: json["totalWeight"] as num? ?? 0.0,
        totalTime: json["totalTime"] as num? ?? 0.0,
        digest:
            List<Digest>.from(json["digest"].map((x) => Digest.fromJson(x))),
      );
}