class SugarAlcohol {
  String? label;
  num? quantity;
  String? unit;

  SugarAlcohol({this.label, this.quantity, this.unit});

  SugarAlcohol.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    quantity = json['quantity'];
    unit = json['unit'];
  }
}
