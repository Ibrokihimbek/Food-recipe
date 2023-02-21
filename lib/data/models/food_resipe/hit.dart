import 'package:food_edamam/data/models/food_resipe/hit_links.dart';
import 'package:food_edamam/data/models/food_resipe/recipe.dart';

class Hit {
  Hit({
    required this.recipe,
    required this.links,
  });

  Recipe recipe;
  HitLinks links;

  factory Hit.fromJson(Map<String, dynamic> json) => Hit(
        recipe: Recipe.fromJson(json["recipe"]),
        links: HitLinks.fromJson(json["_links"]),
      );
}