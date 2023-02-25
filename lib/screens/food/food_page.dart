import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/cubit/food_cobit/food_recipe_cubit.dart';
import 'package:food_edamam/cubit/food_cobit/food_recipe_state.dart';
import 'package:food_edamam/screens/app_router.dart';
import 'package:food_edamam/screens/food/widgets/foods_item.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/app_lotties.dart';
import 'package:food_edamam/utils/font_style.dart';
import 'package:food_edamam/widgets/custom_appbar.dart';
import 'package:lottie/lottie.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodRecipeCubit, FoodRecipeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: const CustomAppBar(title: 'Foods'),
          body: state.foodsCubitStatus == FoodCubitStatus.LOADING
              ? Center(
                  child: Lottie.asset(AppLotties.waiting, width: 130.w),
                )
              : state.foodsCubitStatus == FoodCubitStatus.SUCCESS
                  ? Column(
                      children: [
                        Expanded(
                          child: state.foodRecipeModel.hits.isEmpty
                              ? Center(
                                  child: Lottie.asset(
                                    AppLotties.noData,
                                  ),
                                )
                              : ListView(
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  children: List.generate(
                                    state.foodRecipeModel.hits.length,
                                    (index) => FoodsItem(
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
                                    ),
                                  ),
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
