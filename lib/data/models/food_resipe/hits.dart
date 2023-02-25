import 'package:food_edamam/data/models/food_resipe/links.dart';
import 'package:food_edamam/data/models/food_resipe/recipe.dart';

class Hits {
  Recipe recipe;
  Links lLinks;

  Hits({
    required this.recipe,
    required this.lLinks,
  });

  factory Hits.fromJson(Map<String, dynamic> json) {
    return Hits(
      recipe: Recipe.fromJson(json['recipe'] as Map<String, dynamic>? ?? {}),
      lLinks: Links.fromJson(json['_links'] as Map<String, dynamic>? ?? {}),
    );
  }
}
