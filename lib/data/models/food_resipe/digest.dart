class Digest {
  Digest({
    required this.label,
    required this.tag,
    required this.total,
    required this.hasRdi,
    required this.daily,
    this.sub,
  });

  String label;
  String tag;
  num total;
  bool hasRdi;
  num daily;
  List<Digest>? sub;

  factory Digest.fromJson(Map<String, dynamic> json) => Digest(
        label: json["label"] as String? ?? '',
        tag: json["tag"] as String? ?? '',
        total: json["total"] as num? ?? 0.0,
        hasRdi: json["hasRDI"] as bool? ?? false,
        daily: json["daily"] as num? ?? 0.0,
        sub: json["sub"] == null
            ? []
            : List<Digest>.from(json["sub"]!.map((x) => Digest.fromJson(x))),
      );
}