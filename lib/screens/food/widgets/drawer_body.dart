import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_edamam/utils/app_colors.dart';
import 'package:food_edamam/utils/font_style.dart';

class DrawerBodyPage extends StatelessWidget {
  final VoidCallback aboutByApp;
  final VoidCallback aboutDeveloper;
  const DrawerBodyPage({
    super.key,
    required this.aboutByApp,
    required this.aboutDeveloper,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          listTileWidget(
            title: "About",
            onTap: aboutByApp,
            tileColor: Colors.transparent,
            styleColor: AppColors.black,
          ),
          listTileWidget(
            title: "Developer info",
            onTap: aboutDeveloper,
            tileColor: Colors.transparent,
            styleColor: AppColors.black,
          ),
        ],
      ),
    );
  }

  ListTile listTileWidget({
    required String title,
    required VoidCallback onTap,
    required Color tileColor,
    required Color styleColor,
  }) {
    return ListTile(
      onTap: onTap,
      tileColor: tileColor,
      leading: Icon(
        title == 'About' ? Icons.info_outline : Icons.person,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      title: Text(
        title,
        style: fontRobotoW400(appcolor: styleColor).copyWith(
          fontSize: 16.sp,
        ),
      ),
    );
  }
}
