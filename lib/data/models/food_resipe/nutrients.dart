class Nutrients {
  Nutrients({
    required this.enercKcal,
    required this.procnt,
    required this.fat,
    required this.chocdf,
    required this.fibtg,
  });

  num enercKcal;
  num procnt;
  num fat;
  num chocdf;
  num fibtg;

  factory Nutrients.fromJson(Map<String, dynamic> json) => Nutrients(
        enercKcal: json["ENERC_KCAL"],
        procnt: json["PROCNT"]?.toDouble(),
        fat: json["FAT"]?.toDouble(),
        chocdf: json["CHOCDF"]?.toDouble(),
        fibtg: json["FIBTG"]?.toDouble(),
      );
}