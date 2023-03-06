import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/data/models/food_resipe/hits.dart';
import 'package:food_edamam/screens/food/animated/hero_animated.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/font_style.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class FoodsItem extends StatelessWidget {
  final VoidCallback onTap;
  final Hits hint;
  const FoodsItem({super.key, required this.hint, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 8,
      ),
      child: ZoomTapAnimation(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: AppColors.white,
            boxShadow: const [
              BoxShadow(
                color: AppColors.C_18063336,
                blurRadius: 4,
                spreadRadius: 0.5,
              ),
            ],
          ),
          width: double.infinity,
          height: 100.h,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8.h, left: 8.w, right: 8.w).r,
                    child: SizedBox(
                      width: 100.w,
                      height: 84.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.r),
                        child: PhotoHero(
                          photo: hint.recipe.image,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: hint.recipe.source.substring(
                                  0,
                                  hint.recipe.source.length > 26
                                      ? 20
                                      : hint.recipe.source.length),
                              style: fontRobotoW600(appcolor: AppColors.black)
                                  .copyWith(fontSize: 16.sp),
                            ),
                            TextSpan(
                              text: hint.recipe.source.length > 26
                                  ? "... more"
                                  : "",
                              style: const TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 4.h),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: hint.recipe.label.substring(
                                  0,
                                  hint.recipe.label.length > 25
                                      ? 16
                                      : hint.recipe.label.length),
                              style: fontRobotoW600(appcolor: AppColors.black)
                                  .copyWith(fontSize: 16.sp),
                            ),
                            TextSpan(
                              text: hint.recipe.label.length > 25
                                  ? "... more"
                                  : "",
                              style: const TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Kal: ${hint.recipe.calories.toInt()}',
                        style: fontRobotoW400(
                          appcolor: AppColors.C_97A2B0,
                        ).copyWith(fontSize: 14.sp),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
