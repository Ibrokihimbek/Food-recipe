import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/data/models/on_boarding_model/on_boarding_model.dart';
import 'package:food_edamam/screens/app_router.dart';
import 'package:food_edamam/screens/on_boarding/widgets/on_boarding_item.dart';
import 'package:food_edamam/screens/on_boarding/widgets/post_indicator_widget.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/app_images.dart';
import 'package:food_edamam/utils/font_style.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  PageController pageController = PageController();
  String nextButton = 'Next';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.C_70B9BE,
        ),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20).r,
                    child: InkWell(
                      onTap: () {
                        if (currentIndex != 0) {
                          setState(() {
                            pageController.previousPage(
                                duration: const Duration(seconds: 1),
                                curve: Curves.ease);
                          });
                        }
                      },
                      child: Text(
                        'Back',
                        style:
                            fontRobotoW400(appcolor: AppColors.white).copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20).r,
                    child: InkWell(
                      onTap: () {
                        saveLogin(context);
                      },
                      child: Text(
                        'Skip',
                        style:
                            fontRobotoW400(appcolor: AppColors.white).copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.h),
              Stack(
                children: [
                  Positioned(
                    top: 330.h,
                    left: 60.w,
                    right: 60.w,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20).r,
                        child: PostIndicator(
                          currentIndex: currentIndex,
                          itemCount: OnboardingModel.onboardingItem.length,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 730.h,
                    child: PageView.builder(
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                          if (currentIndex == 2) {
                            nextButton = 'Get started';
                          } else {
                            nextButton = 'Next';
                          }
                        });
                      },
                      physics: const BouncingScrollPhysics(),
                      controller: pageController,
                      itemCount: OnboardingModel.onboardingItem.length,
                      itemBuilder: (BuildContext context, int index) {
                        return OnboardingItem(
                          currentIndex: currentIndex,
                          onboard: OnboardingModel.onboardingItem[index],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 48.h),
                  Positioned(
                    bottom: 20.h,
                    left: 12.w,
                    right: 12.w,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20).r,
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            if (currentIndex == 1) {
                              nextButton = 'Get started';
                            }
                            if (currentIndex == 2) {
                              saveLogin(context);
                            }
                            setState(() {
                              pageController.nextPage(
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.ease);
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: nextButton == 'Next' ? 150.w : 200.w,
                            height: 54.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: AppColors.C_042628,
                            ),
                            child: Center(
                              child: Text(
                                nextButton,
                                style: fontRobotoW800(appcolor: AppColors.white)
                                    .copyWith(
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void saveLogin(context) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool("isLoggedIn", true);

    Navigator.pushReplacementNamed(context, RouteName.search);
  }
}
