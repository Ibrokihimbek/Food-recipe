import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/app_images.dart';
import 'package:food_edamam/utils/font_style.dart';
import 'package:food_edamam/widgets/custom_appbar.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(18).r,
            child: Container(
              padding: const EdgeInsets.all(12).r,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: AppColors.C_70B9BE,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      AppImages.imageLogo,
                      width: 150.w,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Looking for a new recipe? Have a special diet or nutrition needs?Our Recipes and Nutrition app is your solution. It is both an amazing recipe finder and the only place where you can compare and select over a million recipes from hundreds of web-sites for calorie, diet and nutrition information.',
                    style: fontRobotoW400(
                      appcolor: AppColors.white,
                    ),
                  ),
                  Text(
                    '\n\n1. You type in your search. Maybe you’ve seen a new inspiring vegetable at the grocery store; or feel like baking vegan and gluten-free cookies. Or maybe, you want to get creative in the kitchen and find a new great recipe for high protein, low calorie meal. Whatever the case, we have the answer.\n\n2. Select a filter. We handle all the major nutrition and calorie needs. Make your selection before you hit search or after you find some recipes. It’s up to you. Here are some of our most popular filters.\n– Vegetarian\n– Vegan\n– High Protein\n– Gluten Free\n– Dairy Free\n– Low Carb\n– Low Fat\n– Recipes Between 200 and 400 Calories\n\n3. We deliver the results. Our algorithm brings up on top the highest quality recipes from the top web-sites such as Epicurious, Food & Wine, 101 Cookbooks, Simply Recipes and many more. No need to browse back and forth. We’ve done the work of bringing up the best and highest quality.\n\n4. See and compare. We’ve made it super easy to browse through the results. All recipes have great photos and you can quickly go through the top results and compare for nutrition and ingredients. Each recipe has a full nutritional profile, so you can see not only the calorie, protein, fat and carb content, but also the values and recommended daily intake for many essential micro nutrients and minerals. That’s why we call it Recipes and Nutrition app!\n\n5. Go shopping. Each recipe has a list of ingredients with easy checkboxes for convenient grocery shopping. You don’t even need to write down a grocery list. Just bring your phone or tablet to the store, find the recipe you want and shop for it using our app. The time you save on planning and shopping, you can spend making delicious and nutritious meals in the kitchen.',
                    style: fontRobotoW400(
                      appcolor: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
