// import 'package:flutter/widgets.dart';

// class FoodRecipeModels {
//   num from;
//   num to;
//   num count;
//   Links lLinks;
//   List<Hits> hits;

//   FoodRecipeModels({
//     required this.from,
//     required this.to,
//     required this.count,
//     required this.lLinks,
//     required this.hits,
//   });

//   factory FoodRecipeModels.fromJson(Map<String, dynamic> json) {
//     debugPrint('1');
//     return FoodRecipeModels(
//       from: json['from'] as num? ?? 0,
//       to: json['to'] as num? ?? 0,
//       count: json['count'] as num? ?? 0,
//       lLinks: Links.fromJson(json['_links']),
//       hits:
//           (json['hits'] as List?)?.map((e) => Hits.fromJson(e)).toList() ?? [],
//     );
//   }
// }

// class Links {
//   Next next;

//   Links({required this.next});

//   factory Links.fromJson(Map<String, dynamic> json) {
//     debugPrint('2');
//     return Links(
//       next: Next.fromJson(json['next']),
//     );
//   }
// }

// class Next {
//   String href;
//   String title;

//   Next({required this.href, required this.title});

//   factory Next.fromJson(Map<String, dynamic> json) {
//     debugPrint('3');
//     return Next(
//       href: json['href'] as String? ?? '',
//       title: json['title'] as String? ?? '',
//     );
//   }
// }

// class Hits {
//   Recipe recipe;
//   Links lLinks;

//   Hits({required this.recipe, required this.lLinks});

//   factory Hits.fromJson(Map<String, dynamic> json) {
//     debugPrint('4');
//     return Hits(
//       recipe: Recipe.fromJson(json['recipe']),
//       lLinks: Links.fromJson(json['_links']),
//     );
//   }
// }

// class Recipe {
//   String uri;
//   String label;
//   String image;
//   Images images;
//   String source;
//   String url;
//   String shareAs;
//   num yieldRecipe;
//   List<String> dietLabels;
//   List<String> healthLabels;
//   List<String> cautions;
//   List<String> ingredientLines;
//   List<Ingredients> ingredients;
//   num calories;
//   num totalWeight;
//   num totalTime;
//   List<String> cuisineType;
//   List<String> mealType;
//   List<String> dishType;
//   TotalNutrients totalNutrients;
//   TotalDaily totalDaily;
//   List<Digest> digest;

//   Recipe({
//     required this.uri,
//     required this.label,
//     required this.image,
//     required this.images,
//     required this.source,
//     required this.url,
//     required this.shareAs,
//     required this.yieldRecipe,
//     required this.dietLabels,
//     required this.healthLabels,
//     required this.cautions,
//     required this.ingredientLines,
//     required this.ingredients,
//     required this.calories,
//     required this.totalWeight,
//     required this.totalTime,
//     required this.cuisineType,
//     required this.mealType,
//     required this.dishType,
//     required this.totalNutrients,
//     required this.totalDaily,
//     required this.digest,
//   });

//   factory Recipe.fromJson(Map<String, dynamic> json) {
//     debugPrint('5');
//     return Recipe(
//       uri: json['uri'] as String? ?? '',
//       label: json['label'] as String? ?? '',
//       image: json['image'] as String? ?? '',
//       images: Images.fromJson(json['images']),
//       source: json['source'] as String? ?? '',
//       url: json['url'] as String? ?? '',
//       shareAs: json['shareAs'] as String? ?? '',
//       yieldRecipe: json['yield'] as num? ?? 0,
//       dietLabels: json['dietLabels'] as List<String>? ?? [],
//       healthLabels: json['healthLabels'] as List<String>? ?? [],
//       cautions: json['cautions'] as List<String>? ?? [],
//       ingredientLines: json['ingredientLines'] as List<String>? ?? [],
//       calories: json['calories'] as num? ?? 0,
//       totalWeight: json['totalWeight'] as num? ?? 0,
//       totalTime: json['totalTime'] as num? ?? 0,
//       cuisineType: json['cuisineType'] as List<String>? ?? [],
//       mealType: json['mealType'] as List<String>? ?? [],
//       dishType: json['dishType'] as List<String>? ?? [],
//       totalNutrients: TotalNutrients.fromJson(json['totalNutrients']),
//       totalDaily: TotalDaily.fromJson(json['totalDaily']),
//       ingredients: (json['ingredients'] as List?)
//               ?.map((e) => Ingredients.fromJson(e))
//               .toList() ??
//           [],
//       digest:
//           (json['digest'] as List?)?.map((e) => Digest.fromJson(e)).toList() ??
//               [],
//     );
//   }
// }

// class Images {
//   THUMBNAIL tHUMBNAIL;
//   THUMBNAIL sMALL;
//   THUMBNAIL rEGULAR;
//   THUMBNAIL lARGE;

//   Images({
//     required this.tHUMBNAIL,
//     required this.sMALL,
//     required this.rEGULAR,
//     required this.lARGE,
//   });

//   factory Images.fromJson(Map<String, dynamic> json) {
//     debugPrint('6');
//     return Images(
//       tHUMBNAIL: THUMBNAIL.fromJson(json['THUMBNAIL']),
//       sMALL: THUMBNAIL.fromJson(json['SMALL']),
//       rEGULAR: THUMBNAIL.fromJson(json['REGULAR']),
//       lARGE: THUMBNAIL.fromJson(json['LARGE']),
//     );
//   }
// }

// class THUMBNAIL {
//   String url;
//   num width;
//   num height;

//   THUMBNAIL({
//     required this.url,
//     required this.width,
//     required this.height,
//   });

//   factory THUMBNAIL.fromJson(Map<String, dynamic> json) {
//     debugPrint('7');
//     return THUMBNAIL(
//       url: json['url'] as String? ?? '',
//       width: json['width'] as num? ?? 0,
//       height: json['height'] as num? ?? 0,
//     );
//   }
// }

// class Ingredients {
//   String text;
//   num quantity;
//   String measure;
//   String food;
//   num weight;
//   String foodCategory;
//   String foodId;
//   String image;

//   Ingredients({
//     required this.text,
//     required this.quantity,
//     required this.measure,
//     required this.food,
//     required this.weight,
//     required this.foodCategory,
//     required this.foodId,
//     required this.image,
//   });

//   factory Ingredients.fromJson(Map<String, dynamic> json) {
//     debugPrint('8');
//     return Ingredients(
//       text: json['text'] as String? ?? '',
//       quantity: json['quantity'] as num? ?? 0,
//       measure: json['measure'] as String? ?? '',
//       food: json['food'] as String? ?? '',
//       weight: json['weight'] as num? ?? 0,
//       foodCategory: json['foodCategory'] as String? ?? '',
//       foodId: json['foodId'] as String? ?? '',
//       image: json['image'] as String? ?? '',
//     );
//   }
// }

// class TotalNutrients {
//   ENERCKCAL eNERCKCAL;
//   ENERCKCAL fAT;
//   ENERCKCAL fASAT;
//   ENERCKCAL fATRN;
//   ENERCKCAL fAMS;
//   ENERCKCAL fAPU;
//   ENERCKCAL cHOCDF;
//   ENERCKCAL cHOCDFNet;
//   ENERCKCAL fIBTG;
//   ENERCKCAL sUGAR;
//   ENERCKCAL sUGARAdded;
//   ENERCKCAL pROCNT;
//   ENERCKCAL cHOLE;
//   ENERCKCAL nA;
//   ENERCKCAL cA;
//   ENERCKCAL mG;
//   ENERCKCAL k;
//   ENERCKCAL fE;
//   ENERCKCAL zN;
//   ENERCKCAL p;
//   ENERCKCAL vITARAE;
//   ENERCKCAL vITC;
//   ENERCKCAL tHIA;
//   ENERCKCAL rIBF;
//   ENERCKCAL nIA;
//   ENERCKCAL vITB6A;
//   ENERCKCAL fOLDFE;
//   ENERCKCAL fOLFD;
//   ENERCKCAL fOLAC;
//   ENERCKCAL vITB12;
//   ENERCKCAL vITD;
//   ENERCKCAL tOCPHA;
//   ENERCKCAL vITK1;
//   ENERCKCAL wATER;
//   SugarAlcohol sugarAlcohol;

//   TotalNutrients({
//     required this.eNERCKCAL,
//     required this.fAT,
//     required this.fASAT,
//     required this.fATRN,
//     required this.fAMS,
//     required this.fAPU,
//     required this.cHOCDF,
//     required this.cHOCDFNet,
//     required this.fIBTG,
//     required this.sUGAR,
//     required this.sUGARAdded,
//     required this.pROCNT,
//     required this.cHOLE,
//     required this.nA,
//     required this.cA,
//     required this.mG,
//     required this.k,
//     required this.fE,
//     required this.zN,
//     required this.p,
//     required this.vITARAE,
//     required this.vITC,
//     required this.tHIA,
//     required this.rIBF,
//     required this.nIA,
//     required this.vITB6A,
//     required this.fOLDFE,
//     required this.fOLFD,
//     required this.fOLAC,
//     required this.vITB12,
//     required this.vITD,
//     required this.tOCPHA,
//     required this.vITK1,
//     required this.sugarAlcohol,
//     required this.wATER,
//   });

//   factory TotalNutrients.fromJson(Map<String, dynamic> json) {
//     debugPrint('9');
//     return TotalNutrients(
//       eNERCKCAL: ENERCKCAL.fromJson(json['ENERC_KCAL']),
//       fAT: ENERCKCAL.fromJson(json['FAT']),
//       fASAT: ENERCKCAL.fromJson(json['FASAT']),
//       fATRN: ENERCKCAL.fromJson(json['FATRN']),
//       fAMS: ENERCKCAL.fromJson(json['FAMS']),
//       fAPU: ENERCKCAL.fromJson(json['FAPU']),
//       cHOCDF: ENERCKCAL.fromJson(json['CHOCDF']),
//       cHOCDFNet: ENERCKCAL.fromJson(json['CHOCDF.net']),
//       fIBTG: ENERCKCAL.fromJson(json['FIBTG']),
//       sUGAR: ENERCKCAL.fromJson(json['SUGAR']),
//       sUGARAdded: ENERCKCAL.fromJson(json['SUGAR.added']),
//       pROCNT: ENERCKCAL.fromJson(json['PROCNT']),
//       cHOLE: ENERCKCAL.fromJson(json['CHOLE']),
//       cA: ENERCKCAL.fromJson(json['CA']),
//       nA: ENERCKCAL.fromJson(json['NA']),
//       mG: ENERCKCAL.fromJson(json['MG']),
//       k: ENERCKCAL.fromJson(json['K']),
//       fE: ENERCKCAL.fromJson(json['FE']),
//       zN: ENERCKCAL.fromJson(json['ZN']),
//       p: ENERCKCAL.fromJson(json['P']),
//       vITARAE: ENERCKCAL.fromJson(json['VITA_RAE']),
//       vITC: ENERCKCAL.fromJson(json['VITC']),
//       tHIA: ENERCKCAL.fromJson(json['THIA']),
//       rIBF: ENERCKCAL.fromJson(json['RIBF']),
//       nIA: ENERCKCAL.fromJson(json['NIA']),
//       vITB6A: ENERCKCAL.fromJson(json['VITB6A']),
//       fOLDFE: ENERCKCAL.fromJson(json['FOLDFE']),
//       fOLFD: ENERCKCAL.fromJson(json['FOLFD']),
//       fOLAC: ENERCKCAL.fromJson(json['FOLAC']),
//       vITB12: ENERCKCAL.fromJson(json['VITB12']),
//       vITD: ENERCKCAL.fromJson(json['VITD']),
//       tOCPHA: ENERCKCAL.fromJson(json['TOCPHA']),
//       vITK1: ENERCKCAL.fromJson(json['VITK1']),
//       sugarAlcohol: SugarAlcohol.fromJson(json['Sugar.alcohol']),
//       wATER: ENERCKCAL.fromJson(json['WATER']),
//     );
//   }
// }

// class ENERCKCAL {
//   String label;
//   num quantity;
//   String unit;

//   ENERCKCAL({
//     required this.label,
//     required this.quantity,
//     required this.unit,
//   });

//   factory ENERCKCAL.fromJson(Map<String, dynamic> json) {
//     debugPrint('10');
//     return ENERCKCAL(
//       label: json['label'] as String? ?? '',
//       quantity: json['quantity'] as num? ?? 0,
//       unit: json['unit'] as String? ?? '',
//     );
//   }
// }

// class SugarAlcohol {
//   String label;
//   num quantity;
//   String unit;

//   SugarAlcohol({
//     required this.label,
//     required this.quantity,
//     required this.unit,
//   });

//   factory SugarAlcohol.fromJson(Map<String, dynamic> json) {
//     debugPrint('11');
//     return SugarAlcohol(
//       label: json['label'] as String? ?? '',
//       quantity: json['quantity'] as num? ?? 0,
//       unit: json['unit'] as String? ?? '',
//     );
//   }
// }

// class TotalDaily {
//   ENERCKCAL eNERCKCAL;
//   ENERCKCAL fAT;
//   ENERCKCAL fASAT;
//   ENERCKCAL cHOCDF;
//   ENERCKCAL fIBTG;
//   ENERCKCAL pROCNT;
//   ENERCKCAL cHOLE;
//   ENERCKCAL nA;
//   ENERCKCAL cA;
//   ENERCKCAL mG;
//   ENERCKCAL k;
//   ENERCKCAL fE;
//   ENERCKCAL zN;
//   ENERCKCAL p;
//   ENERCKCAL vITARAE;
//   ENERCKCAL vITC;
//   ENERCKCAL tHIA;
//   ENERCKCAL rIBF;
//   ENERCKCAL nIA;
//   ENERCKCAL vITB6A;
//   ENERCKCAL fOLDFE;
//   ENERCKCAL vITB12;
//   ENERCKCAL vITD;
//   ENERCKCAL tOCPHA;
//   ENERCKCAL vITK1;

//   TotalDaily({
//     required this.eNERCKCAL,
//     required this.fAT,
//     required this.fASAT,
//     required this.cHOCDF,
//     required this.fIBTG,
//     required this.pROCNT,
//     required this.cHOLE,
//     required this.nA,
//     required this.cA,
//     required this.mG,
//     required this.k,
//     required this.fE,
//     required this.zN,
//     required this.p,
//     required this.vITARAE,
//     required this.vITC,
//     required this.tHIA,
//     required this.rIBF,
//     required this.nIA,
//     required this.vITB6A,
//     required this.fOLDFE,
//     required this.vITB12,
//     required this.vITD,
//     required this.tOCPHA,
//     required this.vITK1,
//   });

//   factory TotalDaily.fromJson(Map<String, dynamic> json) {
//     debugPrint('12');
//     return TotalDaily(
//       eNERCKCAL: ENERCKCAL.fromJson(json['ENERC_KCAL']),
//       fAT: ENERCKCAL.fromJson(json['FAT']),
//       fASAT: ENERCKCAL.fromJson(json['FASAT']),
//       cHOCDF: ENERCKCAL.fromJson(json['CHOCDF']),
//       fIBTG: ENERCKCAL.fromJson(json['FIBTG']),
//       pROCNT: ENERCKCAL.fromJson(json['PROCNT']),
//       cHOLE: ENERCKCAL.fromJson(json['CHOLE']),
//       nA: ENERCKCAL.fromJson(json['NA']),
//       cA: ENERCKCAL.fromJson(json['CA']),
//       mG: ENERCKCAL.fromJson(json['MG']),
//       k: ENERCKCAL.fromJson(json['K']),
//       fE: ENERCKCAL.fromJson(json['FE']),
//       zN: ENERCKCAL.fromJson(json['ZN']),
//       p: ENERCKCAL.fromJson(json['P']),
//       vITARAE: ENERCKCAL.fromJson(json['VITA_RAE']),
//       vITC: ENERCKCAL.fromJson(json['VITC']),
//       tHIA: ENERCKCAL.fromJson(json['THIA']),
//       rIBF: ENERCKCAL.fromJson(json['RIBF']),
//       nIA: ENERCKCAL.fromJson(json['NIA']),
//       vITB6A: ENERCKCAL.fromJson(json['VITB6A']),
//       fOLDFE: ENERCKCAL.fromJson(json['FOLDFE']),
//       vITB12: ENERCKCAL.fromJson(json['VITB12']),
//       vITD: ENERCKCAL.fromJson(json['VITD']),
//       tOCPHA: ENERCKCAL.fromJson(json['TOCPHA']),
//       vITK1: ENERCKCAL.fromJson(json['VITK1']),
//     );
//   }
// }

// class Digest {
//   String label;
//   String tag;
//   String schemaOrgTag;
//   num total;
//   bool hasRDI;
//   num daily;
//   String unit;
//   List<Sub> sub;

//   Digest({
//     required this.label,
//     required this.tag,
//     required this.schemaOrgTag,
//     required this.total,
//     required this.hasRDI,
//     required this.daily,
//     required this.unit,
//     required this.sub,
//   });

//   factory Digest.fromJson(Map<String, dynamic> json) {
//     debugPrint('13');
//     return Digest(
//       label: json['label'] as String? ?? '',
//       tag: json['tag'] as String? ?? '',
//       schemaOrgTag: json['schemaOrgTag'] as String? ?? '',
//       total: json['total'] as num? ?? 0,
//       hasRDI: json['hasRDI'] as bool? ?? false,
//       daily: json['daily'] as num? ?? 0,
//       unit: json['unit'] as String? ?? '',
//       sub: (json['sub'] as List?)?.map((e) => Sub.fromJson(e)).toList() ?? [],
//     );
//   }
// }

// class Sub {
//   String label;
//   String tag;
//   String schemaOrgTag;
//   num total;
//   bool hasRDI;
//   num daily;
//   String unit;

//   Sub({
//     required this.label,
//     required this.tag,
//     required this.schemaOrgTag,
//     required this.total,
//     required this.hasRDI,
//     required this.daily,
//     required this.unit,
//   });

//   factory Sub.fromJson(Map<String, dynamic> json) {
//     debugPrint('14');
//     return Sub(
//       label: json['label'] as String? ?? '',
//       tag: json['tag'] as String? ?? '',
//       schemaOrgTag: json['schemaOrgTag'] as String? ?? '',
//       total: json['total'] as num? ?? 0,
//       hasRDI: json['hasRDI'] as bool? ?? false,
//       daily: json['daily'] as num? ?? 0,
//       unit: json['unit'] as String? ?? '',
//     );
//   }
// }

// class LinksFood {
//   Next self;

//   LinksFood({required this.self});

//   factory LinksFood.fromJson(Map<String, dynamic> json) {
//     debugPrint('15');
//     return LinksFood(self: Next.fromJson(json['self']));
//   }
// }

class FoodRecipeModels {
  num? from;
  num? to;
  num? count;
  Links? lLinks;
  List<Hits>? hits;

  FoodRecipeModels({this.from, this.to, this.count, this.lLinks, this.hits});

  FoodRecipeModels.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    count = json['count'];
    lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
    if (json['hits'] != null) {
      hits = <Hits>[];
      json['hits'].forEach((v) {
        hits!.add(new Hits.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['from'] = this.from;
    data['to'] = this.to;
    data['count'] = this.count;
    if (this.lLinks != null) {
      data['_links'] = this.lLinks!.toJson();
    }
    if (this.hits != null) {
      data['hits'] = this.hits!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Links {
  Next? next;

  Links({this.next});

  Links.fromJson(Map<String, dynamic> json) {
    next = json['next'] != null ? new Next.fromJson(json['next']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.next != null) {
      data['next'] = this.next!.toJson();
    }
    return data;
  }
}

class Next {
  String? href;
  String? title;

  Next({this.href, this.title});

  Next.fromJson(Map<String, dynamic> json) {
    href = json['href'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['href'] = this.href;
    data['title'] = this.title;
    return data;
  }
}

class Hits {
  Recipe? recipe;
  Links? lLinks;

  Hits({this.recipe, this.lLinks});

  Hits.fromJson(Map<String, dynamic> json) {
    recipe =
        json['recipe'] != null ? new Recipe.fromJson(json['recipe']) : null;
    lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.recipe != null) {
      data['recipe'] = this.recipe!.toJson();
    }
    if (this.lLinks != null) {
      data['_links'] = this.lLinks!.toJson();
    }
    return data;
  }
}

class Recipe {
  String? uri;
  String? label;
  String? image;
  Images? images;
  String? source;
  String? url;
  String? shareAs;
  num? yield;
  List<String>? dietLabels;
  List<String>? healthLabels;
  List<String>? cautions;
  List<String>? ingredientLines;
  List<Ingredients>? ingredients;
  double? calories;
  double? totalWeight;
  num? totalTime;
  List<String>? cuisineType;
  List<String>? mealType;
  List<String>? dishType;
  TotalNutrients? totalNutrients;
  TotalDaily? totalDaily;
  List<Digest>? digest;

  Recipe(
      {this.uri,
      this.label,
      this.image,
      this.images,
      this.source,
      this.url,
      this.shareAs,
      this.yield,
      this.dietLabels,
      this.healthLabels,
      this.cautions,
      this.ingredientLines,
      this.ingredients,
      this.calories,
      this.totalWeight,
      this.totalTime,
      this.cuisineType,
      this.mealType,
      this.dishType,
      this.totalNutrients,
      this.totalDaily,
      this.digest});

  Recipe.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    label = json['label'];
    image = json['image'];
    images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
    source = json['source'];
    url = json['url'];
    shareAs = json['shareAs'];
    yield = json['yield'];
    dietLabels = json['dietLabels'].cast<String>();
    healthLabels = json['healthLabels'].cast<String>();
    cautions = json['cautions'].cast<String>();
    ingredientLines = json['ingredientLines'].cast<String>();
    if (json['ingredients'] != null) {
      ingredients = <Ingredients>[];
      json['ingredients'].forEach((v) {
        ingredients!.add(new Ingredients.fromJson(v));
      });
    }
    calories = json['calories'];
    totalWeight = json['totalWeight'];
    totalTime = json['totalTime'];
    cuisineType = json['cuisineType'].cast<String>();
    mealType = json['mealType'].cast<String>();
    dishType = json['dishType'].cast<String>();
    totalNutrients = json['totalNutrients'] != null
        ? new TotalNutrients.fromJson(json['totalNutrients'])
        : null;
    totalDaily = json['totalDaily'] != null
        ? new TotalDaily.fromJson(json['totalDaily'])
        : null;
    if (json['digest'] != null) {
      digest = <Digest>[];
      json['digest'].forEach((v) {
        digest!.add(new Digest.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uri'] = this.uri;
    data['label'] = this.label;
    data['image'] = this.image;
    if (this.images != null) {
      data['images'] = this.images!.toJson();
    }
    data['source'] = this.source;
    data['url'] = this.url;
    data['shareAs'] = this.shareAs;
    data['yield'] = this.yield;
    data['dietLabels'] = this.dietLabels;
    data['healthLabels'] = this.healthLabels;
    data['cautions'] = this.cautions;
    data['ingredientLines'] = this.ingredientLines;
    if (this.ingredients != null) {
      data['ingredients'] = this.ingredients!.map((v) => v.toJson()).toList();
    }
    data['calories'] = this.calories;
    data['totalWeight'] = this.totalWeight;
    data['totalTime'] = this.totalTime;
    data['cuisineType'] = this.cuisineType;
    data['mealType'] = this.mealType;
    data['dishType'] = this.dishType;
    if (this.totalNutrients != null) {
      data['totalNutrients'] = this.totalNutrients!.toJson();
    }
    if (this.totalDaily != null) {
      data['totalDaily'] = this.totalDaily!.toJson();
    }
    if (this.digest != null) {
      data['digest'] = this.digest!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Images {
  THUMBNAIL? tHUMBNAIL;
  THUMBNAIL? sMALL;
  THUMBNAIL? rEGULAR;
  THUMBNAIL? lARGE;

  Images({this.tHUMBNAIL, this.sMALL, this.rEGULAR, this.lARGE});

  Images.fromJson(Map<String, dynamic> json) {
    tHUMBNAIL = json['THUMBNAIL'] != null
        ? new THUMBNAIL.fromJson(json['THUMBNAIL'])
        : null;
    sMALL =
        json['SMALL'] != null ? new THUMBNAIL.fromJson(json['SMALL']) : null;
    rEGULAR = json['REGULAR'] != null
        ? new THUMBNAIL.fromJson(json['REGULAR'])
        : null;
    lARGE =
        json['LARGE'] != null ? new THUMBNAIL.fromJson(json['LARGE']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tHUMBNAIL != null) {
      data['THUMBNAIL'] = this.tHUMBNAIL!.toJson();
    }
    if (this.sMALL != null) {
      data['SMALL'] = this.sMALL!.toJson();
    }
    if (this.rEGULAR != null) {
      data['REGULAR'] = this.rEGULAR!.toJson();
    }
    if (this.lARGE != null) {
      data['LARGE'] = this.lARGE!.toJson();
    }
    return data;
  }
}

class THUMBNAIL {
  String? url;
  num? width;
  num? height;

  THUMBNAIL({this.url, this.width, this.height});

  THUMBNAIL.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}

class Ingredients {
  String? text;
  double? quantity;
  String? measure;
  String? food;
  double? weight;
  String? foodCategory;
  String? foodId;
  String? image;

  Ingredients(
      {this.text,
      this.quantity,
      this.measure,
      this.food,
      this.weight,
      this.foodCategory,
      this.foodId,
      this.image});

  Ingredients.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    quantity = json['quantity'];
    measure = json['measure'];
    food = json['food'];
    weight = json['weight'];
    foodCategory = json['foodCategory'];
    foodId = json['foodId'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['quantity'] = this.quantity;
    data['measure'] = this.measure;
    data['food'] = this.food;
    data['weight'] = this.weight;
    data['foodCategory'] = this.foodCategory;
    data['foodId'] = this.foodId;
    data['image'] = this.image;
    return data;
  }
}

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
        ? new ENERCKCAL.fromJson(json['ENERC_KCAL'])
        : null;
    fAT = json['FAT'] != null ? new ENERCKCAL.fromJson(json['FAT']) : null;
    fASAT =
        json['FASAT'] != null ? new ENERCKCAL.fromJson(json['FASAT']) : null;
    fATRN =
        json['FATRN'] != null ? new ENERCKCAL.fromJson(json['FATRN']) : null;
    fAMS = json['FAMS'] != null ? new ENERCKCAL.fromJson(json['FAMS']) : null;
    fAPU = json['FAPU'] != null ? new ENERCKCAL.fromJson(json['FAPU']) : null;
    cHOCDF =
        json['CHOCDF'] != null ? new ENERCKCAL.fromJson(json['CHOCDF']) : null;
    cHOCDFNet = json['CHOCDF.net'] != null
        ? new ENERCKCAL.fromJson(json['CHOCDF.net'])
        : null;
    fIBTG =
        json['FIBTG'] != null ? new ENERCKCAL.fromJson(json['FIBTG']) : null;
    sUGAR =
        json['SUGAR'] != null ? new ENERCKCAL.fromJson(json['SUGAR']) : null;
    sUGARAdded = json['SUGAR.added'] != null
        ? new ENERCKCAL.fromJson(json['SUGAR.added'])
        : null;
    pROCNT =
        json['PROCNT'] != null ? new ENERCKCAL.fromJson(json['PROCNT']) : null;
    cHOLE =
        json['CHOLE'] != null ? new ENERCKCAL.fromJson(json['CHOLE']) : null;
    nA = json['NA'] != null ? new ENERCKCAL.fromJson(json['NA']) : null;
    cA = json['CA'] != null ? new ENERCKCAL.fromJson(json['CA']) : null;
    mG = json['MG'] != null ? new ENERCKCAL.fromJson(json['MG']) : null;
    k = json['K'] != null ? new ENERCKCAL.fromJson(json['K']) : null;
    fE = json['FE'] != null ? new ENERCKCAL.fromJson(json['FE']) : null;
    zN = json['ZN'] != null ? new ENERCKCAL.fromJson(json['ZN']) : null;
    p = json['P'] != null ? new ENERCKCAL.fromJson(json['P']) : null;
    vITARAE = json['VITA_RAE'] != null
        ? new ENERCKCAL.fromJson(json['VITA_RAE'])
        : null;
    vITC = json['VITC'] != null ? new ENERCKCAL.fromJson(json['VITC']) : null;
    tHIA = json['THIA'] != null ? new ENERCKCAL.fromJson(json['THIA']) : null;
    rIBF = json['RIBF'] != null ? new ENERCKCAL.fromJson(json['RIBF']) : null;
    nIA = json['NIA'] != null ? new ENERCKCAL.fromJson(json['NIA']) : null;
    vITB6A =
        json['VITB6A'] != null ? new ENERCKCAL.fromJson(json['VITB6A']) : null;
    fOLDFE =
        json['FOLDFE'] != null ? new ENERCKCAL.fromJson(json['FOLDFE']) : null;
    fOLFD =
        json['FOLFD'] != null ? new ENERCKCAL.fromJson(json['FOLFD']) : null;
    fOLAC =
        json['FOLAC'] != null ? new ENERCKCAL.fromJson(json['FOLAC']) : null;
    vITB12 =
        json['VITB12'] != null ? new ENERCKCAL.fromJson(json['VITB12']) : null;
    vITD = json['VITD'] != null ? new ENERCKCAL.fromJson(json['VITD']) : null;
    tOCPHA =
        json['TOCPHA'] != null ? new ENERCKCAL.fromJson(json['TOCPHA']) : null;
    vITK1 =
        json['VITK1'] != null ? new ENERCKCAL.fromJson(json['VITK1']) : null;
    sugarAlcohol = json['Sugar.alcohol'] != null
        ? new SugarAlcohol.fromJson(json['Sugar.alcohol'])
        : null;
    wATER =
        json['WATER'] != null ? new ENERCKCAL.fromJson(json['WATER']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eNERCKCAL != null) {
      data['ENERC_KCAL'] = this.eNERCKCAL!.toJson();
    }
    if (this.fAT != null) {
      data['FAT'] = this.fAT!.toJson();
    }
    if (this.fASAT != null) {
      data['FASAT'] = this.fASAT!.toJson();
    }
    if (this.fATRN != null) {
      data['FATRN'] = this.fATRN!.toJson();
    }
    if (this.fAMS != null) {
      data['FAMS'] = this.fAMS!.toJson();
    }
    if (this.fAPU != null) {
      data['FAPU'] = this.fAPU!.toJson();
    }
    if (this.cHOCDF != null) {
      data['CHOCDF'] = this.cHOCDF!.toJson();
    }
    if (this.cHOCDFNet != null) {
      data['CHOCDF.net'] = this.cHOCDFNet!.toJson();
    }
    if (this.fIBTG != null) {
      data['FIBTG'] = this.fIBTG!.toJson();
    }
    if (this.sUGAR != null) {
      data['SUGAR'] = this.sUGAR!.toJson();
    }
    if (this.sUGARAdded != null) {
      data['SUGAR.added'] = this.sUGARAdded!.toJson();
    }
    if (this.pROCNT != null) {
      data['PROCNT'] = this.pROCNT!.toJson();
    }
    if (this.cHOLE != null) {
      data['CHOLE'] = this.cHOLE!.toJson();
    }
    if (this.nA != null) {
      data['NA'] = this.nA!.toJson();
    }
    if (this.cA != null) {
      data['CA'] = this.cA!.toJson();
    }
    if (this.mG != null) {
      data['MG'] = this.mG!.toJson();
    }
    if (this.k != null) {
      data['K'] = this.k!.toJson();
    }
    if (this.fE != null) {
      data['FE'] = this.fE!.toJson();
    }
    if (this.zN != null) {
      data['ZN'] = this.zN!.toJson();
    }
    if (this.p != null) {
      data['P'] = this.p!.toJson();
    }
    if (this.vITARAE != null) {
      data['VITA_RAE'] = this.vITARAE!.toJson();
    }
    if (this.vITC != null) {
      data['VITC'] = this.vITC!.toJson();
    }
    if (this.tHIA != null) {
      data['THIA'] = this.tHIA!.toJson();
    }
    if (this.rIBF != null) {
      data['RIBF'] = this.rIBF!.toJson();
    }
    if (this.nIA != null) {
      data['NIA'] = this.nIA!.toJson();
    }
    if (this.vITB6A != null) {
      data['VITB6A'] = this.vITB6A!.toJson();
    }
    if (this.fOLDFE != null) {
      data['FOLDFE'] = this.fOLDFE!.toJson();
    }
    if (this.fOLFD != null) {
      data['FOLFD'] = this.fOLFD!.toJson();
    }
    if (this.fOLAC != null) {
      data['FOLAC'] = this.fOLAC!.toJson();
    }
    if (this.vITB12 != null) {
      data['VITB12'] = this.vITB12!.toJson();
    }
    if (this.vITD != null) {
      data['VITD'] = this.vITD!.toJson();
    }
    if (this.tOCPHA != null) {
      data['TOCPHA'] = this.tOCPHA!.toJson();
    }
    if (this.vITK1 != null) {
      data['VITK1'] = this.vITK1!.toJson();
    }
    if (this.sugarAlcohol != null) {
      data['Sugar.alcohol'] = this.sugarAlcohol!.toJson();
    }
    if (this.wATER != null) {
      data['WATER'] = this.wATER!.toJson();
    }
    return data;
  }
}

class ENERCKCAL {
  String? label;
  double? quantity;
  String? unit;

  ENERCKCAL({this.label, this.quantity, this.unit});

  ENERCKCAL.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    quantity = json['quantity'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['quantity'] = this.quantity;
    data['unit'] = this.unit;
    return data;
  }
}

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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['quantity'] = this.quantity;
    data['unit'] = this.unit;
    return data;
  }
}

class TotalDaily {
  ENERCKCAL? eNERCKCAL;
  ENERCKCAL? fAT;
  ENERCKCAL? fASAT;
  ENERCKCAL? cHOCDF;
  ENERCKCAL? fIBTG;
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
  ENERCKCAL? vITB12;
  ENERCKCAL? vITD;
  ENERCKCAL? tOCPHA;
  ENERCKCAL? vITK1;

  TotalDaily(
      {this.eNERCKCAL,
      this.fAT,
      this.fASAT,
      this.cHOCDF,
      this.fIBTG,
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
      this.vITB12,
      this.vITD,
      this.tOCPHA,
      this.vITK1});

  TotalDaily.fromJson(Map<String, dynamic> json) {
    eNERCKCAL = json['ENERC_KCAL'] != null
        ? new ENERCKCAL.fromJson(json['ENERC_KCAL'])
        : null;
    fAT = json['FAT'] != null ? new ENERCKCAL.fromJson(json['FAT']) : null;
    fASAT =
        json['FASAT'] != null ? new ENERCKCAL.fromJson(json['FASAT']) : null;
    cHOCDF =
        json['CHOCDF'] != null ? new ENERCKCAL.fromJson(json['CHOCDF']) : null;
    fIBTG =
        json['FIBTG'] != null ? new ENERCKCAL.fromJson(json['FIBTG']) : null;
    pROCNT =
        json['PROCNT'] != null ? new ENERCKCAL.fromJson(json['PROCNT']) : null;
    cHOLE =
        json['CHOLE'] != null ? new ENERCKCAL.fromJson(json['CHOLE']) : null;
    nA = json['NA'] != null ? new ENERCKCAL.fromJson(json['NA']) : null;
    cA = json['CA'] != null ? new ENERCKCAL.fromJson(json['CA']) : null;
    mG = json['MG'] != null ? new ENERCKCAL.fromJson(json['MG']) : null;
    k = json['K'] != null ? new ENERCKCAL.fromJson(json['K']) : null;
    fE = json['FE'] != null ? new ENERCKCAL.fromJson(json['FE']) : null;
    zN = json['ZN'] != null ? new ENERCKCAL.fromJson(json['ZN']) : null;
    p = json['P'] != null ? new ENERCKCAL.fromJson(json['P']) : null;
    vITARAE = json['VITA_RAE'] != null
        ? new ENERCKCAL.fromJson(json['VITA_RAE'])
        : null;
    vITC = json['VITC'] != null ? new ENERCKCAL.fromJson(json['VITC']) : null;
    tHIA = json['THIA'] != null ? new ENERCKCAL.fromJson(json['THIA']) : null;
    rIBF = json['RIBF'] != null ? new ENERCKCAL.fromJson(json['RIBF']) : null;
    nIA = json['NIA'] != null ? new ENERCKCAL.fromJson(json['NIA']) : null;
    vITB6A =
        json['VITB6A'] != null ? new ENERCKCAL.fromJson(json['VITB6A']) : null;
    fOLDFE =
        json['FOLDFE'] != null ? new ENERCKCAL.fromJson(json['FOLDFE']) : null;
    vITB12 =
        json['VITB12'] != null ? new ENERCKCAL.fromJson(json['VITB12']) : null;
    vITD = json['VITD'] != null ? new ENERCKCAL.fromJson(json['VITD']) : null;
    tOCPHA =
        json['TOCPHA'] != null ? new ENERCKCAL.fromJson(json['TOCPHA']) : null;
    vITK1 =
        json['VITK1'] != null ? new ENERCKCAL.fromJson(json['VITK1']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eNERCKCAL != null) {
      data['ENERC_KCAL'] = this.eNERCKCAL!.toJson();
    }
    if (this.fAT != null) {
      data['FAT'] = this.fAT!.toJson();
    }
    if (this.fASAT != null) {
      data['FASAT'] = this.fASAT!.toJson();
    }
    if (this.cHOCDF != null) {
      data['CHOCDF'] = this.cHOCDF!.toJson();
    }
    if (this.fIBTG != null) {
      data['FIBTG'] = this.fIBTG!.toJson();
    }
    if (this.pROCNT != null) {
      data['PROCNT'] = this.pROCNT!.toJson();
    }
    if (this.cHOLE != null) {
      data['CHOLE'] = this.cHOLE!.toJson();
    }
    if (this.nA != null) {
      data['NA'] = this.nA!.toJson();
    }
    if (this.cA != null) {
      data['CA'] = this.cA!.toJson();
    }
    if (this.mG != null) {
      data['MG'] = this.mG!.toJson();
    }
    if (this.k != null) {
      data['K'] = this.k!.toJson();
    }
    if (this.fE != null) {
      data['FE'] = this.fE!.toJson();
    }
    if (this.zN != null) {
      data['ZN'] = this.zN!.toJson();
    }
    if (this.p != null) {
      data['P'] = this.p!.toJson();
    }
    if (this.vITARAE != null) {
      data['VITA_RAE'] = this.vITARAE!.toJson();
    }
    if (this.vITC != null) {
      data['VITC'] = this.vITC!.toJson();
    }
    if (this.tHIA != null) {
      data['THIA'] = this.tHIA!.toJson();
    }
    if (this.rIBF != null) {
      data['RIBF'] = this.rIBF!.toJson();
    }
    if (this.nIA != null) {
      data['NIA'] = this.nIA!.toJson();
    }
    if (this.vITB6A != null) {
      data['VITB6A'] = this.vITB6A!.toJson();
    }
    if (this.fOLDFE != null) {
      data['FOLDFE'] = this.fOLDFE!.toJson();
    }
    if (this.vITB12 != null) {
      data['VITB12'] = this.vITB12!.toJson();
    }
    if (this.vITD != null) {
      data['VITD'] = this.vITD!.toJson();
    }
    if (this.tOCPHA != null) {
      data['TOCPHA'] = this.tOCPHA!.toJson();
    }
    if (this.vITK1 != null) {
      data['VITK1'] = this.vITK1!.toJson();
    }
    return data;
  }
}

class Digest {
  String? label;
  String? tag;
  String? schemaOrgTag;
  double? total;
  bool? hasRDI;
  double? daily;
  String? unit;
  List<Sub>? sub;

  Digest(
      {this.label,
      this.tag,
      this.schemaOrgTag,
      this.total,
      this.hasRDI,
      this.daily,
      this.unit,
      this.sub});

  Digest.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    tag = json['tag'];
    schemaOrgTag = json['schemaOrgTag'];
    total = json['total'];
    hasRDI = json['hasRDI'];
    daily = json['daily'];
    unit = json['unit'];
    if (json['sub'] != null) {
      sub = <Sub>[];
      json['sub'].forEach((v) {
        sub!.add(new Sub.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['tag'] = this.tag;
    data['schemaOrgTag'] = this.schemaOrgTag;
    data['total'] = this.total;
    data['hasRDI'] = this.hasRDI;
    data['daily'] = this.daily;
    data['unit'] = this.unit;
    if (this.sub != null) {
      data['sub'] = this.sub!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sub {
  String? label;
  String? tag;
  String? schemaOrgTag;
  double? total;
  bool? hasRDI;
  double? daily;
  String? unit;

  Sub(
      {this.label,
      this.tag,
      this.schemaOrgTag,
      this.total,
      this.hasRDI,
      this.daily,
      this.unit});

  Sub.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    tag = json['tag'];
    schemaOrgTag = json['schemaOrgTag'];
    total = json['total'];
    hasRDI = json['hasRDI'];
    daily = json['daily'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['tag'] = this.tag;
    data['schemaOrgTag'] = this.schemaOrgTag;
    data['total'] = this.total;
    data['hasRDI'] = this.hasRDI;
    data['daily'] = this.daily;
    data['unit'] = this.unit;
    return data;
  }
}

class LinksFood {
  Next? self;

  LinksFood({this.self});

  LinksFood.fromJson(Map<String, dynamic> json) {
    self = json['self'] != null ? new Next.fromJson(json['self']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.self != null) {
      data['self'] = this.self!.toJson();
    }
    return data;
  }
}