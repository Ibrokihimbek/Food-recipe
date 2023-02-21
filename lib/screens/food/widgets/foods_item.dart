import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/data/models/food_resipe/hit.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/font_style.dart';

class FoodsItem extends StatelessWidget {
  final Hit hint;
  const FoodsItem({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
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
                  child: Container(
                    width: 100.w,
                    height: 84.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      image: DecorationImage(
                        image: NetworkImage(hint.recipe.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hint.recipe.source,
                      style: fontRobotoW600(appcolor: AppColors.black)
                          .copyWith(fontSize: 16.sp),
                    ),
                    SizedBox(height: 4.h),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: hint.recipe.label.substring(
                                0,
                                hint.recipe.label.length > 25
                                    ? 20
                                    : hint.recipe.label.length),
                            style: fontRobotoW600(appcolor: AppColors.black)
                                .copyWith(fontSize: 16.sp),
                          ),
                          TextSpan(
                            text: hint.recipe.label.length > 25 ? "... more" : "",
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
    );
  }
}
