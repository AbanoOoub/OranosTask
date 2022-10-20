import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/models/app_colors.dart';

class UserMsgWidget extends StatelessWidget {
  const UserMsgWidget({Key? key, required this.msg}) : super(key: key);

  final String msg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 250.w,
            child: Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h, bottom: 10.h),
              child: Text(
                msg,
                style: TextStyle(
                fontSize: 18.sp,
                color: AppColors.white,
                fontWeight: FontWeight.w400,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius:
                  const BorderRadius.all(Radius.circular(5)),
            ),
          ),
          SizedBox(width: 10.w),
          CircleAvatar(
            backgroundColor: AppColors.mainColor,
            child: Icon(Icons.person, color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
