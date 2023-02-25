import 'package:food_edamam/data/models/food_resipe/next.dart';

class Links {
  Next next;

  Links({required this.next});

  factory Links.fromJson(Map<String, dynamic> json) {
    return Links(
      next: Next.fromJson(
        json['next'] as Map<String, dynamic>? ?? {},
      ),
    );
  }
}
