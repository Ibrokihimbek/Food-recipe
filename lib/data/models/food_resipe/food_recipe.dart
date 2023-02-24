import 'package:food_edamam/data/models/food_resipe/hits.dart';
import 'package:food_edamam/data/models/food_resipe/links.dart';

class FoodRecipeModels {
  num? from;
  num? to;
  num? count;
  Links? lLinks;
  List<Hits>? hits;

  FoodRecipeModels({this.from, this.to, this.count, this.lLinks, this.hits});

  FoodRecipeModels.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    count = json['count'];
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
    if (json['hits'] != null) {
      hits = <Hits>[];
      json['hits'].forEach((v) {
        hits!.add(Hits.fromJson(v));
      });
    }
  }
}





















