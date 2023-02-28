import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/font_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar(
      {super.key,
      required this.title,
      required this.onTap,
      this.isIcon = false});

  final String title;
  final VoidCallback onTap;
  final bool isIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: AppColors.black,
      ),
      leading: GestureDetector(
        onTap: onTap,
        child: Icon(
          Icons.menu,
          color: !isIcon ? Colors.transparent : AppColors.black,
        ),
      ),
      backgroundColor: isIcon ? AppColors.white : Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: fontRobotoW800(appcolor: AppColors.black).copyWith(
          fontSize: 24.sp,
        ),
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size(double.infinity, 56);
}
