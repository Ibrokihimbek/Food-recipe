import 'package:flutter/material.dart';
import 'package:food_edamam/screens/food/food_page.dart';
import 'package:food_edamam/screens/search/search_page.dart';
import 'package:food_edamam/screens/splash/splash_page.dart';

abstract class RouteName {
  static const splash = 'splash';
  static const search = 'search';
  static const foods = 'foods';
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splash:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case RouteName.search:
        return MaterialPageRoute(builder: (_) => SearchPage());

      case RouteName.foods:
        return MaterialPageRoute(builder: (_) => FoodPage());
      // case RoutName.productInfo:
      //   final args = settings.arguments as Map<String, dynamic>;
      //   return MaterialPageRoute(
      //     builder: (_) => ProductInfoPage(
      //       productInfo: args['productInfo'],
      //     ),
      //   );

      default:
        return MaterialPageRoute(builder: (_) => Scaffold());
    }
  }
}