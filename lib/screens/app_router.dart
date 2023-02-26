import 'package:flutter/material.dart';
import 'package:food_edamam/screens/food/food_detail/food_detail.dart';
import 'package:food_edamam/screens/food/food_page.dart';
import 'package:food_edamam/screens/on_boarding/on_boarding.dart';
import 'package:food_edamam/screens/search/search_page.dart';
import 'package:food_edamam/screens/splash/splash_page.dart';

abstract class RouteName {
  static const splash = 'splash';
  static const search = 'search';
  static const foods = 'foods';
  static const foodDetail = 'foodDetail';
  static const onBoarding = 'onBoarding';
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splash:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case RouteName.search:
        return MaterialPageRoute(builder: (_) => SearchPage());
      case RouteName.onBoarding:
        return MaterialPageRoute(builder: (_) => OnboardingPage());

      case RouteName.foods:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => FoodPage(
                  query: args['query'],
                  diet: args['diet'],
                  health: args['health'],
                  mealType: args['mealType'],
                  dishType: args['dishType'],
                  cuisineType: args['cuisineType'],
                  ingredient: args['ingredient'],
                  calories: args['calories'],
                  time: args['time'],
                  excluded: args['excluded'],
                ));
      case RouteName.foodDetail:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => FoodDetail(
                  foodInfo: args['foodInfo'],
                ));

      default:
        return MaterialPageRoute(builder: (_) => Scaffold());
    }
  }
}
