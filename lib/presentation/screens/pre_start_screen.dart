import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oranos/data/models/app_colors.dart';
import 'package:oranos/presentation/widgets/language_widget.dart';
import 'package:oranos/presentation/widgets/text_btn_widget.dart';

import '../../data/models/app_routes.dart';

class PreStartScreen extends StatelessWidget {
  const PreStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 50.h),
          Image.asset('assets/images/robot.jpeg'),
          SizedBox(
            width: 145.w,
            height: 55.h,
            child: CustomTextButton(
                btnBackgroundColor: AppColors.mainColor,
                hasBorder: false,
                text: "Next",
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                textColor: AppColors.white,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.getStartedScreenRoute);
                }),
          ),
          const LanguageWidget(),
        ],
      ),
    );
  }
}
