import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/font_style.dart';

class TextWidget extends StatelessWidget {
  final String word;
  const TextWidget({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h).r,
      child: Text(
        word,
        style: fontRobotoW800(appcolor: AppColors.black),
      ),
    );
  }
}
