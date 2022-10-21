import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oranos/presentation/widgets/text_widget.dart';

import '../../data/models/app_colors.dart';

class OnlineExpertWidget extends StatelessWidget {
  const OnlineExpertWidget({Key? key, required this.expertName}) : super(key: key);

  final String expertName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(5.w),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              ClipRRect(
                child: CircleAvatar(
                  backgroundColor: AppColors.secondColor,
                  radius: 30.r,
                  child:
                  Icon(Icons.person,color: AppColors.white),
                ),
              ),
              CircleAvatar(
                radius: 6.r,
                backgroundColor: AppColors.green,
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          CustomText(
            textColor: AppColors.mainTextColor,
            text: expertName,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
