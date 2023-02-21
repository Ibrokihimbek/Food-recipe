import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/font_style.dart';

class ListviewWidget extends StatelessWidget {
  final int itemIndex;
  final dynamic model;
  final ValueChanged<int> onTap;
  const ListviewWidget({
    super.key,
    required this.itemIndex,
    required this.model,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: List.generate(
          model.length,
          (index) => GestureDetector(
            onTap: () => onTap(index),
            child: Container(
              margin: EdgeInsets.only(left: 12.w).r,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.r),
                color: itemIndex == index
                    ? AppColors.C_70B9BE
                    : AppColors.C_E6EBF2,
              ),
              height: 41,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    model[index],
                    style: fontRobotoW400(
                            appcolor: index == itemIndex
                                ? AppColors.white
                                : AppColors.C_70B9BE)
                        .copyWith(fontSize: 16.sp),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
