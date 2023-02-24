import 'package:food_edamam/data/models/food_resipe/links.dart';
import 'package:food_edamam/data/models/food_resipe/recipe.dart';

class Hits {
  Recipe? recipe;
  Links? lLinks;

  Hits({this.recipe, this.lLinks});

  Hits.fromJson(Map<String, dynamic> json) {
    recipe = json['recipe'] != null ? Recipe.fromJson(json['recipe']) : null;
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }
}