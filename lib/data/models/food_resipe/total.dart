class Total {
  Total({
    required this.label,
    required this.quantity,
  });

  String label;
  num quantity;

  factory Total.fromJson(Map<String, dynamic> json) => Total(
        label: json["label"] as String? ?? '',
        quantity: json["quantity"]as num? ?? 0.0,
      );
}