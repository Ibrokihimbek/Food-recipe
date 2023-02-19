import 'package:food_edamam/data/models/food_resipe/qualifier.dart';

class Qualified {
    Qualified({
        required this.qualifiers,
        required this.weight,
    });

    List<Qualifier> qualifiers;
    int weight;

    factory Qualified.fromJson(Map<String, dynamic> json) => Qualified(
        qualifiers: List<Qualifier>.from(json["qualifiers"].map((x) => Qualifier.fromJson(x))),
        weight: json["weight"],
    );

    Map<String, dynamic> toJson() => {
        "qualifiers": List<dynamic>.from(qualifiers.map((x) => x.toJson())),
        "weight": weight,
    };
}