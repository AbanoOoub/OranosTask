import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oranos/presentation/widgets/text_widget.dart';

import '../../data/models/app_colors.dart';

class ExpertsCardWidget extends StatefulWidget {
  const ExpertsCardWidget(
      {Key? key,
      required this.expertName,
      required this.expertImg,
      required this.expertRate,
      required this.expertTrack})
      : super(key: key);

  final String expertName;
  final String expertImg;
  final double expertRate;
  final String expertTrack;

  @override
  State<ExpertsCardWidget> createState() => _ExpertsCardWidgetState();
}

class _ExpertsCardWidgetState extends State<ExpertsCardWidget> {
  bool expertIsFav = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      height: 250.h,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: AppColors.secondColor,
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 7,
              child: SizedBox(
                height: 150.w,
                child: ClipRRect(
                  child: Image.asset(widget.expertImg,fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.r),
                      topLeft: Radius.circular(15.r)),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star, color: AppColors.yellow),
                    CustomText(
                        text: "(${widget.expertRate.toString()})",
                        fontSize: 18.sp,
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.w300,
                        textColor: AppColors.mainTextColor),
                    SizedBox(width: 80.w),
                    Padding(
                      padding: EdgeInsets.all(5.w),
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              expertIsFav = !expertIsFav;
                            });
                          },
                          child: Icon(Icons.favorite,
                              color: expertIsFav
                                  ? AppColors.red
                                  : AppColors.secondColor)),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: CustomText(
                    text: widget.expertName,
                    fontSize: 18.sp,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.w400,
                    textColor: AppColors.mainTextColor),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: CustomText(
                    text: widget.expertTrack,
                    fontSize: 14.sp,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.w400,
                    textColor: AppColors.mainTextColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
