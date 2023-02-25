import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_edamam/data/models/food_digest/food_digest.dart';
import 'package:food_edamam/data/models/food_resipe/digest.dart';
import 'package:food_edamam/data/models/food_resipe/hits.dart';
import 'package:food_edamam/screens/food/animated/hero_animated.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/app_images.dart';
import 'package:food_edamam/utils/font_style.dart';
import 'package:shimmer/shimmer.dart';

class FoodDetail extends StatefulWidget {
  final Hits foodInfo;
  const FoodDetail({super.key, required this.foodInfo});

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  getDigest() {
    List<DigestModel> digestItem = [
      DigestModel(
        icon: AppImages.carbs,
        diggest:
            '${widget.foodInfo.recipe.totalNutrients.cHOCDF.quantity.toInt()}g carbs',
      ),
      DigestModel(
        icon: AppImages.protein,
        diggest:
            '${widget.foodInfo.recipe.totalNutrients.pROCNT.quantity.toInt()}g proteins',
      ),
      DigestModel(
        icon: AppImages.kcal,
        diggest: '${widget.foodInfo.recipe.calories.toInt()} Kcal',
      ),
      DigestModel(
        icon: AppImages.fat,
        diggest:
            '${widget.foodInfo.recipe.totalNutrients.fAT.quantity.toInt()}g fats',
      ),
    ];
    return digestItem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 300.h,
              child: PhotoHero(
                photo: widget.foodInfo.recipe.image,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    widget.foodInfo.recipe.source,
                    style: fontRobotoW800(appcolor: AppColors.black).copyWith(
                      fontSize: 24.sp,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    widget.foodInfo.recipe.cuisineType.first.toUpperCase(),
                    style: fontRobotoW800(appcolor: AppColors.C_70B9BE),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    widget.foodInfo.recipe.label,
                    style: fontRobotoW400(appcolor: AppColors.black),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: getDigest().length,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 4,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 125.w,
                        height: 40.h,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              getDigest()[index].icon,
                              width: 40.w,
                            ),
                            SizedBox(width: 12.w),
                            Text(getDigest()[index].diggest)
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ingredients',
                        style: fontRobotoW800(
                          appcolor: AppColors.black,
                        ),
                      ),
                      Text(
                        '${widget.foodInfo.recipe.ingredients.length} item',
                        style: fontRobotoW800(appcolor: AppColors.C_70B9BE)
                            .copyWith(fontSize: 16.sp),
                      )
                    ],
                  ),
                  SizedBox(height: 12.h),
                  ...List.generate(
                    widget.foodInfo.recipe.ingredients.length,
                    (index) => Container(
                      margin: EdgeInsets.only(
                        bottom: 12.h,
                        right: 2.w,
                        left: 2.w,
                      ).r,
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
                      height: 80.h,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.w, right: 8.w).r,
                            child: SizedBox(
                              width: 60.w,
                              height: 60.h,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.r),
                                child: CachedNetworkImage(
                                  imageUrl: widget
                                      .foodInfo.recipe.ingredients[index].image,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) {
                                    return Shimmer.fromColors(
                                      period: const Duration(seconds: 2),
                                      baseColor: Colors.grey.shade300,
                                      highlightColor: Colors.grey.shade100,
                                      child: Container(
                                        width: 120,
                                        height: 100,
                                        color: Colors.white,
                                      ),
                                    );
                                  },
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 270.w,
                                child: Text(
                                  widget
                                      .foodInfo.recipe.ingredients[index].food,
                                  style:
                                      fontRobotoW600(appcolor: AppColors.black)
                                          .copyWith(fontSize: 16.sp),
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                widget.foodInfo.recipe.ingredients[index]
                                    .foodCategory,
                                style: fontRobotoW300(appcolor: AppColors.black)
                                    .copyWith(fontSize: 14.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'Ingredients Lines',
                    style: fontRobotoW800(
                      appcolor: AppColors.black,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  ...List.generate(
                    widget.foodInfo.recipe.ingredientLines.length,
                    (index) => SizedBox(
                      width: double.infinity,
                      child: Text(
                        widget.foodInfo.recipe.ingredientLines[index],
                        style: fontRobotoW400(appcolor: AppColors.C_70B9BE)
                            .copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
