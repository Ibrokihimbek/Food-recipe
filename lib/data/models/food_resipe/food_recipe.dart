import 'package:food_edamam/data/models/food_resipe/hits.dart';
import 'package:food_edamam/data/models/food_resipe/links.dart';

class FoodRecipeModels {
  num from;
  num to;
  num count;
  Links lLinks;
  List<Hits> hits;

  FoodRecipeModels({
    required this.from,
    required this.to,
    required this.count,
    required this.lLinks,
    required this.hits,
  });

  factory FoodRecipeModels.fromJson(Map<String, dynamic> json) {
    return FoodRecipeModels(
      from: json['from'] as num? ?? 0,
      to: json['to'] as num? ?? 0,
      count: json['count'] as num? ?? 0,
      lLinks: Links.fromJson(json['_links'] as Map<String, dynamic>? ?? {}),
      hits:
          (json['hits'] as List?)?.map((e) => Hits.fromJson(e)).toList() ?? [],
    );
  }
}
