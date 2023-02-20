import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/cubit/food_cobit/food_recipe_cubit.dart';
import 'package:food_edamam/data/models/api_model/food_category.dart';
import 'package:food_edamam/data/models/api_model/food_health_type_model.dart';
import 'package:food_edamam/screens/app_router.dart';
import 'package:food_edamam/screens/search/widgets/custom_button.dart';
import 'package:food_edamam/screens/search/widgets/text_field.dart';
import 'package:food_edamam/screens/search/widgets/text_widget.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/font_style.dart';
import 'package:food_edamam/widgets/custom_appbar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController ingredientController = TextEditingController();
  TextEditingController caloriesController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  int categoryIndex = -1;
  int healthIndex = -1;
  String category = '';
  String health = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Filter'),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextWidget(word: 'Category'),
              SizedBox(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: List.generate(
                    FoodCategory.foodCategory.length,
                    (index) => GestureDetector(
                      onTap: () {
                        category = FoodCategory.foodCategory[index];
                        setState(() {
                          categoryIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 12.w).r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.r),
                          color: categoryIndex == index
                              ? AppColors.C_70B9BE
                              : AppColors.C_E6EBF2,
                        ),
                        height: 41,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              FoodCategory.foodCategory[index],
                              style: fontRobotoW400(
                                      appcolor: index == categoryIndex
                                          ? AppColors.white
                                          : AppColors.C_70B9BE)
                                  .copyWith(fontSize: 16.sp),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const TextWidget(word: 'Health'),
              SizedBox(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: List.generate(
                    FoodHealth.foodHealth.length,
                    (index) => GestureDetector(
                      onTap: () {
                        health = FoodHealth.foodHealth[index];
                        setState(() {
                          healthIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 12.w).r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.r),
                          color: healthIndex == index
                              ? AppColors.C_70B9BE
                              : AppColors.C_E6EBF2,
                        ),
                        height: 30,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              FoodHealth.foodHealth[index],
                              textAlign: TextAlign.center,
                              style: fontRobotoW400(
                                      appcolor: index == healthIndex
                                          ? AppColors.white
                                          : AppColors.C_70B9BE)
                                  .copyWith(fontSize: 16.sp),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const TextWidget(word: 'Ingredient'),
              TextfieldWidget(
                word: 'Enter ingredient',
                textController: ingredientController,
              ),
              const TextWidget(word: 'Calories Range'),
              TextfieldWidgetByCalories(
                word: 'Enter calories range',
                textController: caloriesController,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.w,
                  right: 12.w,
                  bottom: 12.h,
                  top: 230.h,
                ).r,
                child: CustomButton(
                  onTap: () {
                    context.read<FoodRecipeCubit>().fetchFoods(
                          category: category,
                          calorie: caloriesController.text,
                          health: health,
                          ingredient: ingredientController.text,
                        );
                    Navigator.pushNamed(context, RouteName.foods);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    caloriesController.clear();
    ingredientController.clear();
    super.dispose();
  }
}
