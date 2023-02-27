import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/data/models/on_boarding_model/on_boarding_model.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/font_style.dart';

class OnboardingItem extends StatelessWidget {
  final OnboardingModel onboard;
  final int currentIndex;
  const OnboardingItem({
    super.key,
    required this.onboard,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h),
        SizedBox(
          height: 298.h,
          child: Image.asset(
            onboard.imagePath,
            fit: BoxFit.cover,
          ),
        ),
        // SizedBox(height: 134.h),
        const Spacer(),
        Container(
          width: double.infinity,
          height: 280.w,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              topRight: Radius.circular(16.r),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 40.h),
              SizedBox(
                width: 322.w,
                child: Center(
                  child: Text(
                    onboard.title,
                    textAlign: TextAlign.center,
                    style: fontRobotoW800(appcolor: AppColors.black).copyWith(
                      fontSize: 28.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              SizedBox(
                width: 322.w,
                child: Center(
                  child: Text(
                    onboard.subtitle,
                    textAlign: TextAlign.center,
                    style: fontRobotoW400(
                      appcolor: AppColors.C_97A2B0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
