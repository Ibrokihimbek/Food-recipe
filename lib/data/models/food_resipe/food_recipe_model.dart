import 'package:food_edamam/data/models/food_resipe/hit.dart';
import 'package:food_edamam/data/models/food_resipe/links.dart';

class FoodRecipeModels {
  FoodRecipeModels({
    required this.from,
    required this.to,
    required this.count,
    required this.links,
    required this.hits,
  });

  num from;
  num to;
  num count;
  FoodRecipeModelsLinks links;
  List<Hit> hits;

  factory FoodRecipeModels.fromJson(Map<String, dynamic> json) =>
      FoodRecipeModels(
        from: json["from"] as num? ?? 0.0,
        to: json["to"] as num? ?? 0.0,
        count: json["count"] as num? ?? 0.0,
        links: FoodRecipeModelsLinks.fromJson(json["_links"]),
        hits: List<Hit>.from(json["hits"].map((x) => Hit.fromJson(x))),
      );
}
















