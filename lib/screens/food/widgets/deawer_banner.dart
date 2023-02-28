import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/app_images.dart';

class DrawerBaner extends StatelessWidget {
  const DrawerBaner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.h,
      color: AppColors.C_70B9BE,
      child: DrawerHeader(
        child: Column(
          children: [
            SizedBox(height: 12.h),
            const Divider(thickness: 0.8, color: Colors.white),
            SizedBox(height: 8.h),
            SizedBox(
              width: double.infinity,
              height: 60.h,
              child: Image.asset(
                AppImages.imageLogo,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 8.h),
            const Divider(thickness: 0.8, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
