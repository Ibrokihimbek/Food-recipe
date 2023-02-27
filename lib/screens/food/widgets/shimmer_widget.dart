import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerVidget extends StatelessWidget {
  const ShimmerVidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          foodShimmer(),
          foodShimmer(),
          foodShimmer(),
          foodShimmer(),
          foodShimmer(),
          foodShimmer(),
          Padding(
            padding: const EdgeInsets.all(12).r,
            child: Row(
              children: [
                Expanded(
                  child: shimmerMethod(
                    width: double.infinity,
                    height: 54,
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: shimmerMethod(
                    width: double.infinity,
                    height: 54,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding foodShimmer() {
    return Padding(
      padding: const EdgeInsets.all(12).r,
      child: Row(
        children: [
          shimmerMethod(width: 100, height: 84),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              shimmerMethod(width: 210, height: 18),
              SizedBox(height: 8.w),
              shimmerMethod(width: 160, height: 18),
              SizedBox(height: 8.w),
              shimmerMethod(width: 80, height: 18),
            ],
          ),
        ],
      ),
    );
  }

  Shimmer shimmerMethod({required num width, required num height}) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[400]!,
      child: Container(
        width: width.w,
        height: height.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Colors.black,
        ),
      ),
    );
  }
}
