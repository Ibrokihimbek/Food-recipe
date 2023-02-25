import 'package:food_edamam/data/models/food_resipe/digest.dart';
import 'package:food_edamam/data/models/food_resipe/images.dart';
import 'package:food_edamam/data/models/food_resipe/ingridient.dart';
import 'package:food_edamam/data/models/food_resipe/total_dailiy.dart';
import 'package:food_edamam/data/models/food_resipe/total_nutrients.dart';

class Recipe {
  String uri;
  String label;
  String image;
  Images images;
  String source;
  String url;
  String shareAs;
  num yieldRecipe;
  List<dynamic> dietLabels;
  List<dynamic> healthLabels;
  List<dynamic> cautions;
  List<dynamic> ingredientLines;
  List<Ingredients> ingredients;
  num calories;
  num totalWeight;
  num totalTime;
  List<dynamic> cuisineType;
  List<dynamic> mealType;
  List<dynamic> dishType;
  TotalNutrients totalNutrients;
  TotalDaily totalDaily;
  List<Digest> digest;

  Recipe({
    required this.uri,
    required this.label,
    required this.image,
    required this.images,
    required this.source,
    required this.url,
    required this.shareAs,
    required this.yieldRecipe,
    required this.dietLabels,
    required this.healthLabels,
    required this.cautions,
    required this.ingredientLines,
    required this.ingredients,
    required this.calories,
    required this.totalWeight,
    required this.totalTime,
    required this.cuisineType,
    required this.mealType,
    required this.dishType,
    required this.totalNutrients,
    required this.totalDaily,
    required this.digest,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      uri: json['uri'] as String? ?? '',
      label: json['label'] as String? ?? '',
      image: json['image'] as String? ??
          'https://media.istockphoto.com/id/1192970073/vector/tried-and-tested-recipe-approved-label-design-with-text-for-test-kitchen-or-blog-recipes.jpg?s=170667a&w=0&k=20&c=yA7r6LUagUguYUph-981Cv7PAkFw6moFWV-uvqmkSr4=',
      images: Images.fromJson(json['images'] as Map<String, dynamic>? ?? {}),
      source: json['source'] as String? ?? '',
      url: json['url'] as String? ?? '',
      shareAs: json['shareAs'] as String? ?? '',
      yieldRecipe: json['yieldRecipe'] as num? ?? 0,
      dietLabels: json['dietLabels'] as List<dynamic>? ?? [],
      healthLabels: json['healthLabels'] as List<dynamic>? ?? [],
      cautions: json['cautions'] as List<dynamic>? ?? [],
      ingredientLines: json['ingredientLines'] as List<dynamic>? ?? [],
      ingredients: (json['ingredients'] as List?)
              ?.map((e) => Ingredients.fromJson(e))
              .toList() ??
          [],
      calories: json['calories'] as num? ?? 0,
      totalWeight: json['totalWeight'] as num? ?? 0,
      totalTime: json['totalTime'] as num? ?? 0,
      cuisineType: json['cuisineType'] as List<dynamic>? ?? [],
      mealType: json['mealType'] as List<dynamic>? ?? [],
      dishType: json['dishType'] as List<dynamic>? ?? [],
      totalNutrients: TotalNutrients.fromJson(
        json['totalNutrients'] as Map<String, dynamic>? ?? {},
      ),
      totalDaily: TotalDaily.fromJson(
        json['totalDaily'] as Map<String, dynamic>? ?? {},
      ),
      digest:
          (json['digest'] as List?)?.map((e) => Digest.fromJson(e)).toList() ??
              [],
    );
  }
}
