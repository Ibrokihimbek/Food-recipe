import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_edamam/screens/about_developer/widget/button_widget.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/app_images.dart';
import 'package:food_edamam/utils/font_style.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutDeveloper extends StatelessWidget {
  const AboutDeveloper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(12).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40.h),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(AppImages.developer),
                      ),
                      SizedBox(width: 16.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 40,
                                height: 40,
                                child: FlutterLogo(),
                              ),
                              SizedBox(width: 8.h),
                              Text(
                                'Flutter developer',
                                style: fontRobotoW600(
                                  appcolor: AppColors.C_5EC8F8,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Davronbekov Ibrohimbek',
                            style: fontRobotoW600(
                              appcolor: AppColors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 50.h),
                  Text(
                    'I hope you liked this app!',
                    textAlign: TextAlign.center,
                    style: fontRobotoW600(appcolor: AppColors.black),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    'If you any inquiries or if you want an app made for you feel free to contact me.',
                    style: fontRobotoW400(appcolor: AppColors.C_70B9BE),
                  ),
                  SizedBox(height: 40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ButtonWidget(
                        onTap: () {
                          geturl('https://www.instagram.com/ibrokhim_bek_/');
                        },
                        buttonName: 'Instagram',
                        buttonIcon: AppImages.instagram,
                      ),
                      SizedBox(width: 12.w),
                      ButtonWidget(
                        onTap: () {
                          geturl(
                              'https://www.linkedin.com/in/ibrohimbek-davronbekov/');
                        },
                        buttonName: 'Linkedin',
                        buttonIcon: AppImages.linkedin,
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ButtonWidget(
                        onTap: () {
                          geturl('https://t.me/Davronbekov_I');
                        },
                        buttonName: 'Telegram',
                        buttonIcon: AppImages.telegram,
                      ),
                      SizedBox(width: 12.w),
                      ButtonWidget(
                        onTap: () {
                          geturl('mailto:ibrohim9902@gmail.com');
                        },
                        buttonName: 'Gmail',
                        buttonIcon: AppImages.gmail,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> geturl(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}
