import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oranos/data/models/app_routes.dart';
import 'package:oranos/presentation/widgets/language_widget.dart';
import 'package:oranos/presentation/widgets/text_btn_widget.dart';

import '../../data/models/app_colors.dart';
import '../widgets/text_widget.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 8,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 100.h),
                      Image.asset("assets/images/OranosLogo.png"),
                      SizedBox(height: 10.h),
                      CustomText(
                          text: 'Expert From Every Planet',
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w400,
                          textColor: AppColors.mainTextColor),
                    ]),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 60.h,
                      width: 363.w,
                      child: CustomTextButton(
                          btnBackgroundColor: AppColors.mainColor,
                          hasBorder: false,
                          text: "Get Started",
                          textColor: AppColors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 20.sp,
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, AppRoutes.preStartScreenRoute);
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                            text: 'Don\'t have an aacount? ',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.mainTextColor),
                        CustomText(
                            text: 'SignUp',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.mainColor),
                      ],
                    ),
                    const LanguageWidget(),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
