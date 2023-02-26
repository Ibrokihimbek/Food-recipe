import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/cubit/food_cobit/food_recipe_cubit.dart';
import 'package:food_edamam/data/models/api_model/food_cuisine_type.dart';
import 'package:food_edamam/data/models/api_model/food_diet.dart';
import 'package:food_edamam/data/models/api_model/food_dish_type.dart';
import 'package:food_edamam/data/models/api_model/food_health_type_model.dart';
import 'package:food_edamam/data/models/api_model/food_meal_ype.dart';
import 'package:food_edamam/screens/app_router.dart';
import 'package:food_edamam/widgets/custom_button.dart';
import 'package:food_edamam/screens/search/widgets/listview_widget.dart';
import 'package:food_edamam/screens/search/widgets/text_field.dart';
import 'package:food_edamam/screens/search/widgets/text_widget.dart';
import 'package:food_edamam/widgets/custom_appbar.dart';
import 'package:food_edamam/widgets/toast_widget.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController ingredientController = TextEditingController();
  TextEditingController caloriesController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController excludedController = TextEditingController();
  TextEditingController productController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  int dietIndex = -1;
  int healthIndex = -1;
  int mealIndex = -1;
  int dishIndex = -1;
  int cuisineIndex = -1;
  String cuisine = '';
  String dish = '';
  String diet = '';
  String health = '';
  String meal = '';

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        appBar: const CustomAppBar(title: 'Filter'),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(word: 'Diet'),
                ListviewWidget(
                  itemIndex: dietIndex,
                  model: Diet.diet,
                  onTap: (value) {
                    diet = Diet.diet[value];
                    setState(() {
                      dietIndex = value;
                    });
                  },
                ),
                const TextWidget(word: 'Health'),
                ListviewWidget(
                  itemIndex: healthIndex,
                  model: FoodHealth.foodHealth,
                  onTap: (value) {
                    health = FoodHealth.foodHealth[value];
                    setState(() {
                      healthIndex = value;
                    });
                  },
                ),
                const TextWidget(word: 'Meal type'),
                ListviewWidget(
                  itemIndex: mealIndex,
                  model: MealType.mealType,
                  onTap: (value) {
                    meal = MealType.mealType[value];
                    setState(() {
                      mealIndex = value;
                    });
                  },
                ),
                const TextWidget(word: 'Dish type'),
                ListviewWidget(
                  itemIndex: dishIndex,
                  model: DishType.dishType,
                  onTap: (value) {
                    dish = DishType.dishType[value];
                    setState(() {
                      dishIndex = value;
                    });
                  },
                ),
                const TextWidget(word: 'Cuisine type'),
                ListviewWidget(
                  itemIndex: cuisineIndex,
                  model: CuisineType.cuisineType,
                  onTap: (value) {
                    cuisine = CuisineType.cuisineType[value];
                    setState(() {
                      cuisineIndex = value;
                    });
                  },
                ),
                const TextWidget(word: 'Search'),
                TextfieldWidgetByExcluded(
                  word: 'Enter products',
                  textController: productController,
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
                const TextWidget(word: 'Time'),
                TextfieldWidgetByTime(
                  word: 'Time',
                  textController: timeController,
                ),
                const TextWidget(word: 'Excluded'),
                TextfieldWidgetByExcluded(
                  word: 'Excluded',
                  textController: excludedController,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.w,
                    right: 12.w,
                    bottom: 12.h,
                    top: 30.h,
                  ).r,
                  child: CustomButton(
                    width: double.infinity,
                    buttonName: 'Apply Filter',
                    onTap: () {
                      context.read<FoodRecipeCubit>().fetchFoods(
                            q: productController.text,
                            ingr: ingredientController.text,
                            diet: diet,
                            health: health,
                            cuisineType: cuisine,
                            mealType: meal,
                            dishType: dish,
                            calories: caloriesController.text,
                            time: timeController.text,
                            excluded: excludedController.text,
                          );
                      Navigator.pushNamed(context, RouteName.foods, arguments: {
                        'query': productController.text,
                        'diet': diet,
                        'health': health,
                        'mealType': meal,
                        'dishType': dish,
                        'cuisineType': cuisine,
                        'ingredient': ingredientController.text,
                        'calories': caloriesController.text,
                        'time': timeController.text,
                        'excluded': excludedController.text,
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12).r,
                  child: CustomButton(
                    width: double.infinity,
                    buttonName: 'Clear Filter',
                    onTap: () {
                      setState(() {
                        getMyToast(message: 'The filter is cleared');
                        productController.clear();
                        ingredientController.clear();
                        caloriesController.clear();
                        timeController.clear();
                        excludedController.clear();
                        dietIndex = -1;
                        healthIndex = -1;
                        mealIndex = -1;
                        dishIndex = -1;
                        cuisineIndex = -1;
                        cuisine = '';
                        dish = '';
                        diet = '';
                        health = '';
                        meal = '';
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    caloriesController.clear();
    ingredientController.clear();
    productController.clear();
    timeController.clear();
    excludedController.clear();
    super.dispose();
  }
}
