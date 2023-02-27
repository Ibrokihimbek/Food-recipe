import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;
  const PostIndicator(
      {super.key, required this.currentIndex, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 24).r,
      height: 8.h,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w).r,
            child: Container(
              height: 12.h,
              width: 14.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(56.r),
                color: currentIndex == index
                    ? Colors.white
                    : Colors.white.withOpacity(0.4),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 4.w,
          );
        },
      ),
    );
  }
}
