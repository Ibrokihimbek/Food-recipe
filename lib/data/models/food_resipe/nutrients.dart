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
        procnt: json["PROCNT"]?.toDouble(),
        fat: json["FAT"]?.toDouble(),
        chocdf: json["CHOCDF"]?.toDouble(),
        fibtg: json["FIBTG"]?.toDouble(),
      );
}