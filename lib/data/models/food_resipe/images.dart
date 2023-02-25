import 'package:food_edamam/data/models/food_resipe/thumbial.dart';

class Images {
  THUMBNAIL tHUMBNAIL;
  THUMBNAIL sMALL;
  THUMBNAIL rEGULAR;
  THUMBNAIL lARGE;

  Images({
    required this.tHUMBNAIL,
    required this.sMALL,
    required this.rEGULAR,
    required this.lARGE,
  });

  factory Images.fromJson(Map<String, dynamic> json) {
    return Images(
      tHUMBNAIL: THUMBNAIL.fromJson(
        json['THUMBNAIL'] as Map<String, dynamic>? ?? {},
      ),
      sMALL: THUMBNAIL.fromJson(
        json['SMALL'] as Map<String, dynamic>? ?? {},
      ),
      rEGULAR: THUMBNAIL.fromJson(
        json['REGULAR'] as Map<String, dynamic>? ?? {},
      ),
      lARGE: THUMBNAIL.fromJson(
        json['LARGE'] as Map<String, dynamic>? ?? {},
      ),
    );
  }
}
