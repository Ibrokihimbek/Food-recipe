import 'package:food_edamam/data/models/food_resipe/next.dart';

class LinksFood {
  Next? self;

  LinksFood({this.self});

  LinksFood.fromJson(Map<String, dynamic> json) {
    self = json['self'] != null ? Next.fromJson(json['self']) : null;
  }
}