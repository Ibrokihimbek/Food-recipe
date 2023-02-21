class MealType {
  static List<String> mealType = [
    'Breakfast',
    'Dinner',
    'Lunch',
    'Snack',
    'Teatime'
  ];
}

// SizedBox(
              //   height: 45,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     shrinkWrap: true,
              //     physics: const BouncingScrollPhysics(),
              //     children: List.generate(
              //       Diet.diet.length,
              //       (index) => GestureDetector(
              //         child: Container(
              //           margin: EdgeInsets.only(left: 12.w).r,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(40.r),
              //             color: dietIndex == index
              //                 ? AppColors.C_70B9BE
              //                 : AppColors.C_E6EBF2,
              //           ),
              //           height: 41,
              //           child: Center(
              //             child: Padding(
              //               padding: const EdgeInsets.all(8.0),
              //               child: Text(
              //                 Diet.diet[index],
              //                 style: fontRobotoW400(
              //                         appcolor: index == dietIndex
              //                             ? AppColors.white
              //                             : AppColors.C_70B9BE)
              //                     .copyWith(fontSize: 16.sp),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),