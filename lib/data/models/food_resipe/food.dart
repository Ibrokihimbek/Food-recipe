import 'package:food_edamam/data/models/food_resipe/food_recipe_model.dart';
import 'package:food_edamam/data/models/food_resipe/nutrients.dart';

class Food {
    Food({
        required this.foodId,
        required this.label,
        required this.knownAs,
        required this.nutrients,
        required this.category,
        required this.categoryLabel,
        required this.image,
    });

    String foodId;
    String label;
    String knownAs;
    Nutrients nutrients;
    Category category;
    CategoryLabel categoryLabel;
    String image;

    factory Food.fromJson(Map<String, dynamic> json) => Food(
        foodId: json["foodId"],
        label: json["label"],
        knownAs: json["knownAs"],
        nutrients: Nutrients.fromJson(json["nutrients"]),
        category: categoryValues.map[json["category"]]!,
        categoryLabel: categoryLabelValues.map[json["categoryLabel"]]!,
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "foodId": foodId,
        "label": label,
        "knownAs": knownAs,
        "nutrients": nutrients.toJson(),
        "category": categoryValues.reverse[category],
        "categoryLabel": categoryLabelValues.reverse[categoryLabel],
        "image": image,
    };
}