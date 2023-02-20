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
  String category;
  String categoryLabel;
  String image;

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        foodId: json["foodId"] ?? '',
        label: json["label"] ?? '',
        knownAs: json["knownAs"] ?? '',
        nutrients: Nutrients.fromJson(json["nutrients"] ?? {}),
        category: json["category"] ?? '',
        categoryLabel: json["categoryLabel"] ?? '',
        image: json["image"] ??
            'https://www.pngall.com/wp-content/uploads/8/Cooking-Recipe-PNG-High-Quality-Image.png',
      );
}
