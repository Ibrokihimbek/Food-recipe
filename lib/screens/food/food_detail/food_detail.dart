import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_edamam/data/models/food_digest/food_digest.dart';
import 'package:food_edamam/data/models/food_resipe/hits.dart';
import 'package:food_edamam/screens/food/animated/hero_animated.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/font_style.dart';

class FoodDetail extends StatelessWidget {
  final Hits foodInfo;
  const FoodDetail({super.key, required this.foodInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 300.h,
            child: PhotoHero(
              photo: foodInfo.recipe!.image!,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.h),
                Text(
                  foodInfo.recipe!.source!,
                  style: fontRobotoW800(appcolor: AppColors.black).copyWith(
                    fontSize: 24.sp,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  foodInfo.recipe!.label!,
                  style: fontRobotoW400(appcolor: AppColors.black),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: DigestModel.digestIcon.length,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.5 / 3.5,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 50.w,
                      height: 50.h,
                      child: SvgPicture.asset(
                        DigestModel.digestIcon[index],
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
