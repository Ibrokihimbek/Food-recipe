import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/app_images.dart';
import 'package:food_edamam/utils/font_style.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTap;
  final String buttonIcon;
  const ButtonWidget({
    super.key,
    required this.buttonName,
    required this.onTap,
    required this.buttonIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(buttonIcon),
            SizedBox(width: 8.w),
            Text(
              buttonName,
              style: fontRobotoW400(appcolor: AppColors.black),
            ),
          ],
        ),
      ),
    );
  }
}
