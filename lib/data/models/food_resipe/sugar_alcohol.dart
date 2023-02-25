class SugarAlcohol {
  String label;
  num quantity;
  String unit;

  SugarAlcohol({
    required this.label,
    required this.quantity,
    required this.unit,
  });

  factory SugarAlcohol.fromJson(Map<String, dynamic> json) {
    return SugarAlcohol(
      label: json['label'] as String? ?? '',
      quantity: json['quantity'] as num? ?? 0,
      unit: json['unit'] as String? ?? '',
    );
  }
}
