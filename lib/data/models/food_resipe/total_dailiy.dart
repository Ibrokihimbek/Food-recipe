import 'package:food_edamam/data/models/food_resipe/calorie.dart';

class TotalDaily {
  ENERCKCAL eNERCKCAL;
  ENERCKCAL fAT;
  ENERCKCAL fASAT;
  ENERCKCAL cHOCDF;
  ENERCKCAL fIBTG;
  ENERCKCAL pROCNT;
  ENERCKCAL cHOLE;
  ENERCKCAL nA;
  ENERCKCAL cA;
  ENERCKCAL mG;
  ENERCKCAL k;
  ENERCKCAL fE;
  ENERCKCAL zN;
  ENERCKCAL p;
  ENERCKCAL vITARAE;
  ENERCKCAL vITC;
  ENERCKCAL tHIA;
  ENERCKCAL rIBF;
  ENERCKCAL nIA;
  ENERCKCAL vITB6A;
  ENERCKCAL fOLDFE;
  ENERCKCAL vITB12;
  ENERCKCAL vITD;
  ENERCKCAL tOCPHA;
  ENERCKCAL vITK1;

  TotalDaily({
    required this.eNERCKCAL,
    required this.fAT,
    required this.fASAT,
    required this.cHOCDF,
    required this.fIBTG,
    required this.pROCNT,
    required this.cHOLE,
    required this.nA,
    required this.cA,
    required this.mG,
    required this.k,
    required this.fE,
    required this.zN,
    required this.p,
    required this.vITARAE,
    required this.vITC,
    required this.tHIA,
    required this.rIBF,
    required this.nIA,
    required this.vITB6A,
    required this.fOLDFE,
    required this.vITB12,
    required this.vITD,
    required this.tOCPHA,
    required this.vITK1,
  });

  factory TotalDaily.fromJson(Map<String, dynamic> json) {
    return TotalDaily(
      eNERCKCAL: ENERCKCAL.fromJson(
        json['ENERC_KCAL'] as Map<String, dynamic>? ?? {},
      ),
      fAT: ENERCKCAL.fromJson(
        json['FAT'] as Map<String, dynamic>? ?? {},
      ),
      fASAT: ENERCKCAL.fromJson(
        json['FASAT'] as Map<String, dynamic>? ?? {},
      ),
      cHOCDF: ENERCKCAL.fromJson(
        json['CHOCDF'] as Map<String, dynamic>? ?? {},
      ),
      fIBTG: ENERCKCAL.fromJson(
        json['FIBTG'] as Map<String, dynamic>? ?? {},
      ),
      pROCNT: ENERCKCAL.fromJson(
        json['PROCNT'] as Map<String, dynamic>? ?? {},
      ),
      cHOLE: ENERCKCAL.fromJson(
        json['CHOLE'] as Map<String, dynamic>? ?? {},
      ),
      nA: ENERCKCAL.fromJson(
        json['NA'] as Map<String, dynamic>? ?? {},
      ),
      cA: ENERCKCAL.fromJson(
        json['CA'] as Map<String, dynamic>? ?? {},
      ),
      mG: ENERCKCAL.fromJson(
        json['MG'] as Map<String, dynamic>? ?? {},
      ),
      k: ENERCKCAL.fromJson(
        json['K'] as Map<String, dynamic>? ?? {},
      ),
      fE: ENERCKCAL.fromJson(
        json['FE'] as Map<String, dynamic>? ?? {},
      ),
      zN: ENERCKCAL.fromJson(
        json['ZN'] as Map<String, dynamic>? ?? {},
      ),
      p: ENERCKCAL.fromJson(
        json['P'] as Map<String, dynamic>? ?? {},
      ),
      vITARAE: ENERCKCAL.fromJson(
        json['VITA_RAE'] as Map<String, dynamic>? ?? {},
      ),
      vITC: ENERCKCAL.fromJson(
        json['VITC'] as Map<String, dynamic>? ?? {},
      ),
      tHIA: ENERCKCAL.fromJson(
        json['THIA'] as Map<String, dynamic>? ?? {},
      ),
      rIBF: ENERCKCAL.fromJson(
        json['RIBF'] as Map<String, dynamic>? ?? {},
      ),
      nIA: ENERCKCAL.fromJson(
        json['NIA'] as Map<String, dynamic>? ?? {},
      ),
      vITB6A: ENERCKCAL.fromJson(
        json['VITB6A'] as Map<String, dynamic>? ?? {},
      ),
      fOLDFE: ENERCKCAL.fromJson(
        json['FOLDFE'] as Map<String, dynamic>? ?? {},
      ),
      vITB12: ENERCKCAL.fromJson(
        json['VITB12'] as Map<String, dynamic>? ?? {},
      ),
      vITD: ENERCKCAL.fromJson(
        json['VITD'] as Map<String, dynamic>? ?? {},
      ),
      tOCPHA: ENERCKCAL.fromJson(
        json['TOCPHA'] as Map<String, dynamic>? ?? {},
      ),
      vITK1: ENERCKCAL.fromJson(
        json['VITK1'] as Map<String, dynamic>? ?? {},
      ),
    );
  }
}
