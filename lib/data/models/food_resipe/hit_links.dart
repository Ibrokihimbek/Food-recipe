import 'package:food_edamam/data/models/food_resipe/next.dart';

class HitLinks {
  HitLinks({
    required this.self,
  });

  Next self;

  factory HitLinks.fromJson(Map<String, dynamic> json) => HitLinks(
        self: Next.fromJson(json["self"]),
      );
}