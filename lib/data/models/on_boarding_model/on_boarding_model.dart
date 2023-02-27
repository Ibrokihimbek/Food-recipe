import 'package:food_edamam/utils/app_images.dart';

class OnboardingModel {
  String imagePath;
  String title;
  String subtitle;

  OnboardingModel({
    required this.imagePath,
    required this.subtitle,
    required this.title,
  });

  static List<OnboardingModel> onboardingItem = [
    OnboardingModel(
      imagePath: AppImages.onBoardingFirst,
      title: 'All recipe you needed',
      subtitle: "5000+ healthy recipes made by people for your healthy life",
    ),
    OnboardingModel(
      imagePath: AppImages.onBoardingSecond,
      subtitle: "Order the ingredients you need quickly with a fast process",
      title: "Order ingredients",
    ),
    OnboardingModel(
      imagePath: AppImages.onBoardingThird,
      subtitle:
          "Cooking based on the food recipes you find and the food you love",
      title: 'Let’s cooking',
    ),
  ];
}
