import 'package:food_edamam/data/models/food_resipe/calorie.dart';
import 'package:food_edamam/data/models/food_resipe/sugar_alcohol.dart';

class TotalNutrients {
  ENERCKCAL eNERCKCAL;
  ENERCKCAL fAT;
  ENERCKCAL fASAT;
  ENERCKCAL fATRN;
  ENERCKCAL fAMS;
  ENERCKCAL fAPU;
  ENERCKCAL cHOCDF;
  ENERCKCAL cHOCDFNet;
  ENERCKCAL fIBTG;
  ENERCKCAL sUGAR;
  ENERCKCAL sUGARAdded;
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
  ENERCKCAL fOLFD;
  ENERCKCAL fOLAC;
  ENERCKCAL vITB12;
  ENERCKCAL vITD;
  ENERCKCAL tOCPHA;
  ENERCKCAL vITK1;
  SugarAlcohol sugarAlcohol;
  ENERCKCAL wATER;

  TotalNutrients({
    required this.eNERCKCAL,
    required this.fAT,
    required this.fASAT,
    required this.fATRN,
    required this.fAMS,
    required this.fAPU,
    required this.cHOCDF,
    required this.cHOCDFNet,
    required this.fIBTG,
    required this.sUGAR,
    required this.sUGARAdded,
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
    required this.fOLFD,
    required this.fOLAC,
    required this.vITB12,
    required this.vITD,
    required this.tOCPHA,
    required this.vITK1,
    required this.sugarAlcohol,
    required this.wATER,
  });

  factory TotalNutrients.fromJson(Map<String, dynamic> json) {
    return TotalNutrients(
      eNERCKCAL: ENERCKCAL.fromJson(
        json['ENERC_KCAL'] as Map<String, dynamic>? ?? {},
      ),
      fAT: ENERCKCAL.fromJson(
        json['FAT'] as Map<String, dynamic>? ?? {},
      ),
      fASAT: ENERCKCAL.fromJson(
        json['FASAT'] as Map<String, dynamic>? ?? {},
      ),
      fATRN: ENERCKCAL.fromJson(
        json['FATRN'] as Map<String, dynamic>? ?? {},
      ),
      fAMS: ENERCKCAL.fromJson(
        json['FAMS'] as Map<String, dynamic>? ?? {},
      ),
      fAPU: ENERCKCAL.fromJson(
        json['FAPU'] as Map<String, dynamic>? ?? {},
      ),
      cHOCDF: ENERCKCAL.fromJson(
        json['CHOCDF'] as Map<String, dynamic>? ?? {},
      ),
      cHOCDFNet: ENERCKCAL.fromJson(
        json['CHOCDF.net'] as Map<String, dynamic>? ?? {},
      ),
      fIBTG: ENERCKCAL.fromJson(
        json['FIBTG'] as Map<String, dynamic>? ?? {},
      ),
      sUGAR: ENERCKCAL.fromJson(
        json['SUGAR'] as Map<String, dynamic>? ?? {},
      ),
      sUGARAdded: ENERCKCAL.fromJson(
        json['SUGAR.added'] as Map<String, dynamic>? ?? {},
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
      fOLFD: ENERCKCAL.fromJson(
        json['FOLFD'] as Map<String, dynamic>? ?? {},
      ),
      fOLAC: ENERCKCAL.fromJson(
        json['FOLAC'] as Map<String, dynamic>? ?? {},
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
      sugarAlcohol: SugarAlcohol.fromJson(
        json['Sugar.alcohol'] as Map<String, dynamic>? ?? {},
      ),
      wATER: ENERCKCAL.fromJson(
        json['WATER'] as Map<String, dynamic>? ?? {},
      ),
    );
  }
}
