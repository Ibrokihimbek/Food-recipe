import 'package:food_edamam/data/models/food_resipe/next.dart';

class Links {
  Next? next;

  Links({this.next});

  Links.fromJson(Map<String, dynamic> json) {
    next = json['next'] != null ? Next.fromJson(json['next']) : null;
  }
}