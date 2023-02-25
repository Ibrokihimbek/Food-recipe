import 'package:food_edamam/data/models/food_resipe/next.dart';

class LinksFood {
  Next self;

  LinksFood({required this.self});

  factory LinksFood.fromJson(Map<String, dynamic> json) {
    return LinksFood(
      self: Next.fromJson(
        json['self'] as Map<String, dynamic>? ?? {},
      ),
    );
  }
}
