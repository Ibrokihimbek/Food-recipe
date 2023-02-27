import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/screens/app_router.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/app_images.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool isLog = false;

  Future<bool> isLoggedIn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    isLog = pref.getBool("isLoggedIn") ?? false;
    return pref.getBool("isLoggedIn") ?? false;
  }

  @override
  void initState() {
    super.initState();

    isLoggedIn();
    goNext();
  }

  void goNext() {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacementNamed(
            context, isLog ? RouteName.search : RouteName.onBoarding);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.C_70B9BE,
          image: DecorationImage(
              image: AssetImage(
                AppImages.imageBackgroundPatern,
              ),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: SizedBox(
            width: 154.78.w,
            height: 45.2.h,
            child: Image.asset(
              AppImages.imageLogo,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
