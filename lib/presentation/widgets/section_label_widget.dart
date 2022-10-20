import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oranos/data/models/app_colors.dart';
import 'package:oranos/presentation/widgets/text_widget.dart';

class SectionLabelWidget extends StatelessWidget {
  const SectionLabelWidget({Key? key,required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
              text: text,
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
              textColor: AppColors.mainTextColor),
          Icon(Icons.more_horiz,color: AppColors.mainTextColor,size: 25.w),
        ],
      ),
    );
  }
}
