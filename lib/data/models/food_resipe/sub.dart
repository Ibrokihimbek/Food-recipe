class Sub {
  String label;
  String tag;
  String schemaOrgTag;
  num total;
  bool hasRDI;
  num daily;
  String unit;

  Sub({
    required this.label,
    required this.tag,
    required this.schemaOrgTag,
    required this.total,
    required this.hasRDI,
    required this.daily,
    required this.unit,
  });

  factory Sub.fromJson(Map<String, dynamic> json) {
    return Sub(
      label: json['label'] as String? ?? '',
      tag: json['tag'] as String? ?? '',
      schemaOrgTag: json['schemaOrgTag'] as String? ?? '',
      total: json['total'] as num? ?? 0,
      hasRDI: json['hasRDI'] as bool? ?? false,
      daily: json['daily'] as num? ?? 0,
      unit: json['unit'] as String? ?? '',
    );
  }
}
