import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oranos/data/models/app_colors.dart';
import 'package:oranos/presentation/widgets/text_widget.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.language, color: AppColors.black, size: 16.w),
        CustomText(
            text: 'English',
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
            textColor: AppColors.mainTextColor),
      ],
    );
  }
}
