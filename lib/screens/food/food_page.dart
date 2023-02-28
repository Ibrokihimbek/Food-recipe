import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/cubit/food_cobit/food_recipe_cubit.dart';
import 'package:food_edamam/cubit/food_cobit/food_recipe_state.dart';
import 'package:food_edamam/screens/app_router.dart';
import 'package:food_edamam/screens/food/widgets/deawer_banner.dart';
import 'package:food_edamam/screens/food/widgets/drawer_body.dart';
import 'package:food_edamam/screens/food/widgets/foods_item.dart';
import 'package:food_edamam/screens/food/widgets/shimmer_widget.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/app_images.dart';
import 'package:food_edamam/utils/app_lotties.dart';
import 'package:food_edamam/utils/font_style.dart';
import 'package:food_edamam/widgets/custom_appbar.dart';
import 'package:food_edamam/widgets/custom_button.dart';
import 'package:lottie/lottie.dart';

List<String> urlNextPage = [];
GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class FoodPage extends StatelessWidget {
  final String query;
  final String diet;
  final String health;
  final String mealType;
  final String dishType;
  final String cuisineType;
  final String ingredient;
  final String calories;
  final String time;
  final String excluded;
  const FoodPage({
    super.key,
    required this.query,
    required this.diet,
    required this.health,
    required this.mealType,
    required this.dishType,
    required this.cuisineType,
    required this.ingredient,
    required this.calories,
    required this.time,
    required this.excluded,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodRecipeCubit, FoodRecipeState>(
      builder: (context, state) {
        return Scaffold(
          key: scaffoldKey,
          drawer: Drawer(
            child: Column(
              children: [
                const DrawerBaner(),
                DrawerBodyPage(
                  aboutByApp: () {
                    Navigator.pushNamed(context, RouteName.aboutApp);
                  },
                  aboutDeveloper: () {
                    Navigator.pushNamed(context, RouteName.aboutdeveloper);
                  },
                ),
              ],
            ),
          ),
          backgroundColor: AppColors.white,
          appBar: CustomAppBar(
            title: 'Foods',
            isIcon: true,
            onTap: () {
              scaffoldKey.currentState!.openDrawer();
            },
          ),
          body: state.foodsCubitStatus == FoodCubitStatus.LOADING
              ? const Center(child: ShimmerVidget())
              : state.foodsCubitStatus == FoodCubitStatus.SUCCESS
                  ? state.foodRecipeModel.hits.isEmpty
                      ? Center(
                          child: Lottie.asset(
                            AppLotties.noData,
                          ),
                        )
                      : Column(
                          children: [
                            Expanded(
                              child: RawScrollbar(
                                thumbColor: AppColors.C_70B9BE,
                                radius: Radius.circular(16.r),
                                thickness: 7,
                                child: ListView(
                                  physics: const BouncingScrollPhysics(),
                                  children: List.generate(
                                      state.foodRecipeModel.hits.length,
                                      (index) {
                                    return FoodsItem(
                                      onTap: () {
                                        Navigator.pushNamed(
                                          context,
                                          RouteName.foodDetail,
                                          arguments: {
                                            'foodInfo': state
                                                .foodRecipeModel.hits[index]
                                          },
                                        );
                                      },
                                      hint: state.foodRecipeModel.hits[index],
                                    );
                                  }),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 8,
                              ),
                              child: Row(
                                children: [
                                  Visibility(
                                    visible: state.foodRecipeModel.from == 1
                                        ? false
                                        : true,
                                    child: Expanded(
                                      child: CustomButton(
                                        width: double.infinity,
                                        onTap: () {
                                          context
                                              .read<FoodRecipeCubit>()
                                              .fetchFoodsByNextPage(
                                                nextPageUrl: urlNextPage
                                                            .length !=
                                                        1
                                                    ? urlNextPage.elementAt(
                                                        urlNextPage.length - 2,
                                                      )
                                                    : context
                                                        .read<FoodRecipeCubit>()
                                                        .fetchFoods(
                                                          q: query,
                                                          ingr: ingredient,
                                                          diet: diet,
                                                          health: health,
                                                          cuisineType:
                                                              cuisineType,
                                                          mealType: mealType,
                                                          dishType: dishType,
                                                          calories: calories,
                                                          time: time,
                                                          excluded: excluded,
                                                        ),
                                              );
                                          urlNextPage.removeLast();
                                        },
                                        buttonName: 'Back',
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: state.foodRecipeModel.from == 1
                                        ? false
                                        : true,
                                    child: SizedBox(width: 12.w),
                                  ),
                                  Expanded(
                                    child: CustomButton(
                                        width: double.infinity,
                                        onTap: () {
                                          urlNextPage.add(state.foodRecipeModel
                                              .lLinks.next.href);

                                          context
                                              .read<FoodRecipeCubit>()
                                              .fetchFoodsByNextPage(
                                                  nextPageUrl: state
                                                      .foodRecipeModel
                                                      .lLinks
                                                      .next
                                                      .href);
                                        },
                                        buttonName: 'Next'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                  : state.foodsCubitStatus == FoodCubitStatus.ERROR
                      ? Center(
                          child: Text(
                            state.errorText.toString(),
                            textAlign: TextAlign.center,
                            style: fontRobotoW400(
                              appcolor: AppColors.black,
                            ),
                          ),
                        )
                      : Container(),
        );
      },
    );
  }
}
