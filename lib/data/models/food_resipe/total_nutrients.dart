import 'package:food_edamam/data/models/food_resipe/calorie.dart';
import 'package:food_edamam/data/models/food_resipe/sugar_alcohol.dart';

class TotalNutrients {
  ENERCKCAL? eNERCKCAL;
  ENERCKCAL? fAT;
  ENERCKCAL? fASAT;
  ENERCKCAL? fATRN;
  ENERCKCAL? fAMS;
  ENERCKCAL? fAPU;
  ENERCKCAL? cHOCDF;
  ENERCKCAL? cHOCDFNet;
  ENERCKCAL? fIBTG;
  ENERCKCAL? sUGAR;
  ENERCKCAL? sUGARAdded;
  ENERCKCAL? pROCNT;
  ENERCKCAL? cHOLE;
  ENERCKCAL? nA;
  ENERCKCAL? cA;
  ENERCKCAL? mG;
  ENERCKCAL? k;
  ENERCKCAL? fE;
  ENERCKCAL? zN;
  ENERCKCAL? p;
  ENERCKCAL? vITARAE;
  ENERCKCAL? vITC;
  ENERCKCAL? tHIA;
  ENERCKCAL? rIBF;
  ENERCKCAL? nIA;
  ENERCKCAL? vITB6A;
  ENERCKCAL? fOLDFE;
  ENERCKCAL? fOLFD;
  ENERCKCAL? fOLAC;
  ENERCKCAL? vITB12;
  ENERCKCAL? vITD;
  ENERCKCAL? tOCPHA;
  ENERCKCAL? vITK1;
  SugarAlcohol? sugarAlcohol;
  ENERCKCAL? wATER;

  TotalNutrients(
      {this.eNERCKCAL,
      this.fAT,
      this.fASAT,
      this.fATRN,
      this.fAMS,
      this.fAPU,
      this.cHOCDF,
      this.cHOCDFNet,
      this.fIBTG,
      this.sUGAR,
      this.sUGARAdded,
      this.pROCNT,
      this.cHOLE,
      this.nA,
      this.cA,
      this.mG,
      this.k,
      this.fE,
      this.zN,
      this.p,
      this.vITARAE,
      this.vITC,
      this.tHIA,
      this.rIBF,
      this.nIA,
      this.vITB6A,
      this.fOLDFE,
      this.fOLFD,
      this.fOLAC,
      this.vITB12,
      this.vITD,
      this.tOCPHA,
      this.vITK1,
      this.sugarAlcohol,
      this.wATER});

  TotalNutrients.fromJson(Map<String, dynamic> json) {
    eNERCKCAL = json['ENERC_KCAL'] != null
        ? ENERCKCAL.fromJson(json['ENERC_KCAL'])
        : null;
    fAT = json['FAT'] != null ? ENERCKCAL.fromJson(json['FAT']) : null;
    fASAT = json['FASAT'] != null ? ENERCKCAL.fromJson(json['FASAT']) : null;
    fATRN = json['FATRN'] != null ? ENERCKCAL.fromJson(json['FATRN']) : null;
    fAMS = json['FAMS'] != null ? ENERCKCAL.fromJson(json['FAMS']) : null;
    fAPU = json['FAPU'] != null ? ENERCKCAL.fromJson(json['FAPU']) : null;
    cHOCDF = json['CHOCDF'] != null ? ENERCKCAL.fromJson(json['CHOCDF']) : null;
    cHOCDFNet = json['CHOCDF.net'] != null
        ? ENERCKCAL.fromJson(json['CHOCDF.net'])
        : null;
    fIBTG = json['FIBTG'] != null ? ENERCKCAL.fromJson(json['FIBTG']) : null;
    sUGAR = json['SUGAR'] != null ? ENERCKCAL.fromJson(json['SUGAR']) : null;
    sUGARAdded = json['SUGAR.added'] != null
        ? ENERCKCAL.fromJson(json['SUGAR.added'])
        : null;
    pROCNT = json['PROCNT'] != null ? ENERCKCAL.fromJson(json['PROCNT']) : null;
    cHOLE = json['CHOLE'] != null ? ENERCKCAL.fromJson(json['CHOLE']) : null;
    nA = json['NA'] != null ? ENERCKCAL.fromJson(json['NA']) : null;
    cA = json['CA'] != null ? ENERCKCAL.fromJson(json['CA']) : null;
    mG = json['MG'] != null ? ENERCKCAL.fromJson(json['MG']) : null;
    k = json['K'] != null ? ENERCKCAL.fromJson(json['K']) : null;
    fE = json['FE'] != null ? ENERCKCAL.fromJson(json['FE']) : null;
    zN = json['ZN'] != null ? ENERCKCAL.fromJson(json['ZN']) : null;
    p = json['P'] != null ? ENERCKCAL.fromJson(json['P']) : null;
    vITARAE =
        json['VITA_RAE'] != null ? ENERCKCAL.fromJson(json['VITA_RAE']) : null;
    vITC = json['VITC'] != null ? ENERCKCAL.fromJson(json['VITC']) : null;
    tHIA = json['THIA'] != null ? ENERCKCAL.fromJson(json['THIA']) : null;
    rIBF = json['RIBF'] != null ? ENERCKCAL.fromJson(json['RIBF']) : null;
    nIA = json['NIA'] != null ? ENERCKCAL.fromJson(json['NIA']) : null;
    vITB6A = json['VITB6A'] != null ? ENERCKCAL.fromJson(json['VITB6A']) : null;
    fOLDFE = json['FOLDFE'] != null ? ENERCKCAL.fromJson(json['FOLDFE']) : null;
    fOLFD = json['FOLFD'] != null ? ENERCKCAL.fromJson(json['FOLFD']) : null;
    fOLAC = json['FOLAC'] != null ? ENERCKCAL.fromJson(json['FOLAC']) : null;
    vITB12 = json['VITB12'] != null ? ENERCKCAL.fromJson(json['VITB12']) : null;
    vITD = json['VITD'] != null ? ENERCKCAL.fromJson(json['VITD']) : null;
    tOCPHA = json['TOCPHA'] != null ? ENERCKCAL.fromJson(json['TOCPHA']) : null;
    vITK1 = json['VITK1'] != null ? ENERCKCAL.fromJson(json['VITK1']) : null;
    sugarAlcohol = json['Sugar.alcohol'] != null
        ? SugarAlcohol.fromJson(json['Sugar.alcohol'])
        : null;
    wATER = json['WATER'] != null ? ENERCKCAL.fromJson(json['WATER']) : null;
  }
}
