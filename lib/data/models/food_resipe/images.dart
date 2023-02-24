import 'package:food_edamam/data/models/food_resipe/thumbial.dart';

class Images {
  THUMBNAIL? tHUMBNAIL;
  THUMBNAIL? sMALL;
  THUMBNAIL? rEGULAR;
  THUMBNAIL? lARGE;

  Images({this.tHUMBNAIL, this.sMALL, this.rEGULAR, this.lARGE});

  Images.fromJson(Map<String, dynamic> json) {
    tHUMBNAIL = json['THUMBNAIL'] != null
        ? THUMBNAIL.fromJson(json['THUMBNAIL'])
        : null;
    sMALL = json['SMALL'] != null ? THUMBNAIL.fromJson(json['SMALL']) : null;
    rEGULAR =
        json['REGULAR'] != null ? THUMBNAIL.fromJson(json['REGULAR']) : null;
    lARGE = json['LARGE'] != null ? THUMBNAIL.fromJson(json['LARGE']) : null;
  }
}