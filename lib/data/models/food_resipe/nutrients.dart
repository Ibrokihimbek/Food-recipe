class Nutrients {
  Nutrients({
    required this.enercKcal,
    required this.procnt,
    required this.fat,
    required this.chocdf,
    required this.fibtg,
  });

  dynamic enercKcal;
  dynamic procnt;
  dynamic fat;
  dynamic chocdf;
  dynamic fibtg;

  factory Nutrients.fromJson(Map<String, dynamic> json) => Nutrients(
        enercKcal: json["ENERC_KCAL"],
        procnt: json["PROCNT"] as double? ?? 0.0,
        fat: json["FAT"] as double? ?? 0.0,
        chocdf: json["CHOCDF"] as double? ?? 0.0,
        fibtg: json["FIBTG"] as double? ?? 0.0,
      );
}
