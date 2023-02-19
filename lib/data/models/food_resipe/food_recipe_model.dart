import 'package:food_edamam/data/models/food_resipe/enum_values.dart';
import 'package:food_edamam/data/models/food_resipe/hint_model.dart';
import 'package:food_edamam/data/models/food_resipe/links.dart';

class FoodRecipeModels {
  FoodRecipeModels({
    required this.text,
    required this.parsed,
    required this.hints,
    required this.links,
  });

  String text;
  List<dynamic> parsed;
  List<Hint> hints;
  Links links;

  factory FoodRecipeModels.fromJson(Map<String, dynamic> json) =>
      FoodRecipeModels(
        text: json["text"],
        parsed: List<dynamic>.from(json["parsed"].map((x) => x)),
        hints: List<Hint>.from(json["hints"].map((x) => Hint.fromJson(x))),
        links: Links.fromJson(json["_links"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "parsed": List<dynamic>.from(parsed.map((x) => x)),
        "hints": List<dynamic>.from(hints.map((x) => x.toJson())),
        "_links": links.toJson(),
      };
}

enum Category { GENERIC_FOODS }

final categoryValues = EnumValues({"Generic foods": Category.GENERIC_FOODS});

enum CategoryLabel { FOOD }

final categoryLabelValues = EnumValues({"food": CategoryLabel.FOOD});
