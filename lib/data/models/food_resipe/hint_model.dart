import 'package:food_edamam/data/models/food_resipe/food.dart';
import 'package:food_edamam/data/models/food_resipe/measure.dart';

class Hint {
    Hint({
        required this.food,
        required this.measures,
    });

    Food food;
    List<Measure> measures;

    factory Hint.fromJson(Map<String, dynamic> json) => Hint(
        food: Food.fromJson(json["food"]),
        measures: List<Measure>.from(json["measures"].map((x) => Measure.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "food": food.toJson(),
        "measures": List<dynamic>.from(measures.map((x) => x.toJson())),
    };
}