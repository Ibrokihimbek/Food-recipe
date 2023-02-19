class Qualifier {
    Qualifier({
        required this.uri,
        required this.label,
    });

    String uri;
    String label;

    factory Qualifier.fromJson(Map<String, dynamic> json) => Qualifier(
        uri: json["uri"],
        label: json["label"],
    );

    Map<String, dynamic> toJson() => {
        "uri": uri,
        "label": label,
    };
}