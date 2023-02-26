import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/font_style.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTap;
  final double width;
  const CustomButton(
      {super.key, required this.onTap, required this.buttonName, required this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16.r),
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: AppColors.C_70B9BE),
        width: width,
        height: 54.h,
        child: Center(
          child: Text(
            buttonName,
            style: fontRobotoW800(appcolor: AppColors.white)
                .copyWith(fontSize: 16.sp),
          ),
        ),
      ),
    );
  }
}
