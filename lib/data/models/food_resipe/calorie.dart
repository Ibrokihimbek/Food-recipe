class ENERCKCAL {
  String label;
  num quantity;
  String unit;

  ENERCKCAL({
    required this.label,
    required this.quantity,
    required this.unit,
  });

  factory ENERCKCAL.fromJson(Map<String, dynamic> json) {
    return ENERCKCAL(
      label : json['label'] as String? ?? '',
      quantity : json['quantity'] as num? ?? 0,
      unit : json['unit'] as String? ?? '',
    );
  }
}
