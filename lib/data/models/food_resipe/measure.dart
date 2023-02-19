import 'package:food_edamam/data/models/food_resipe/qualified.dart';

class Measure {
    Measure({
        required this.uri,
        required this.label,
        required this.weight,
        this.qualified,
    });

    String uri;
    String label;
    double weight;
    List<Qualified>? qualified;

    factory Measure.fromJson(Map<String, dynamic> json) => Measure(
        uri: json["uri"],
        label: json["label"],
        weight: json["weight"]?.toDouble(),
        qualified: json["qualified"] == null ? [] : List<Qualified>.from(json["qualified"]!.map((x) => Qualified.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "uri": uri,
        "label": label,
        "weight": weight,
        "qualified": qualified == null ? [] : List<dynamic>.from(qualified!.map((x) => x.toJson())),
    };
}