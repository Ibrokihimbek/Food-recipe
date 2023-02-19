import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/data/models/api_model/food_category.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/font_style.dart';
import 'package:food_edamam/widgets/custom_appbar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int itemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Filter'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h).r,
            child: Text(
              'Category',
              style: fontRobotoW800(appcolor: AppColors.black),
            ),
          ),
          SizedBox(
            height: 45,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              children: List.generate(
                FoodCategory.foodCategory.length,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      itemIndex = index;
                    });
                  },
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
                          FoodCategory.foodCategory[index],
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
          )
        ],
      ),
    );
  }
}
