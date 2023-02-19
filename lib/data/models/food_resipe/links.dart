import 'package:food_edamam/data/models/food_resipe/next.dart';

class Links {
    Links({
        required this.next,
    });

    Next next;

    factory Links.fromJson(Map<String, dynamic> json) => Links(
        next: Next.fromJson(json["next"]),
    );

    Map<String, dynamic> toJson() => {
        "next": next.toJson(),
    };
}