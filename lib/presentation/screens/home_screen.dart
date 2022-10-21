import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oranos/data/models/app_colors.dart';
import 'package:oranos/presentation/widgets/experts_card_widget.dart';
import 'package:oranos/presentation/widgets/online_expert_widget.dart';
import 'package:oranos/presentation/widgets/section_label_widget.dart';
import 'package:oranos/presentation/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Widget> expertInfoList = [
    const ExpertsCardWidget(
        expertName: "Abanoub Lotfy",
        expertImg: "assets/images/person1.jpg",
        expertRate: 5.0,
        expertTrack: "Supply Chain"),
    const ExpertsCardWidget(
        expertName: "Merna Adel",
        expertImg: "assets/images/person2.jpg",
        expertRate: 5.0,
        expertTrack: "Translator"),
    const ExpertsCardWidget(
        expertName: "Abanoub Lotfy",
        expertImg: "assets/images/person1.jpg",
        expertRate: 5.0,
        expertTrack: "Information Technology"),
    const ExpertsCardWidget(
        expertName: "Merna Adel",
        expertImg: "assets/images/person2.jpg",
        expertRate: 5.0,
        expertTrack: "Human Resource"),
  ];

  final List<Widget> onlineExpertList = [
    const OnlineExpertWidget(expertName: "Abanoub"),
    const OnlineExpertWidget(expertName: "Osama"),
    const OnlineExpertWidget(expertName: "Merna"),
    const OnlineExpertWidget(expertName: "Adel"),
    const OnlineExpertWidget(expertName: "Lotfy"),
    const OnlineExpertWidget(expertName: "Ahmed"),
    const OnlineExpertWidget(expertName: "Mostafa"),
    const OnlineExpertWidget(expertName: "Heba"),
    const OnlineExpertWidget(expertName: "Nour"),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            children: [
              const SectionLabelWidget(text: "Recommended Experts"),
              SizedBox(
                width: double.infinity,
                height: 250.h,
                child: ListView.builder(
                  itemBuilder: (context, index) => expertInfoList[index],
                  itemCount: expertInfoList.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SectionLabelWidget(text: "Online Experts"),
              SizedBox(
                width: double.infinity,
                height: 150.h,
                child: ListView.builder(
                  itemBuilder: (context, index) => onlineExpertList[index],
                  itemCount: onlineExpertList.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
        DraggableScrollableSheet(
          minChildSize: 0.05,
          maxChildSize: 0.8,
          builder: (context, scrollController) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Container(
                child: ListView(
                  controller: scrollController,
                  children: [
                    Divider(
                        height: 35,
                        thickness: 1,
                        indent: 150.w,
                        endIndent: 150.w,
                        color: AppColors.mainTextColor),
                    Container(
                      child: ListTile(
                        leading: Image.asset("assets/images/it_icon.png",
                            fit: BoxFit.fill),
                        title: CustomText(
                            text: 'Information Technology',
                            textAlign: TextAlign.start,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.mainTextColor),
                        subtitle: CustomText(
                            text: '23 Experts',
                            textAlign: TextAlign.start,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.mainTextColor),
                        trailing: Icon(Icons.navigate_next, size: 30.w),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            width: 1,
                            color: AppColors.black.withOpacity(0.3),
                          )),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      child: ListTile(
                        leading: Image.asset(
                            "assets/images/supply_chain_icon.png",
                            fit: BoxFit.fill),
                        title: CustomText(
                            text: 'Supply Chain',
                            textAlign: TextAlign.start,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.mainTextColor),
                        subtitle: CustomText(
                            text: '12 Experts',
                            textAlign: TextAlign.start,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.mainTextColor),
                        trailing: Icon(Icons.navigate_next, size: 30.w),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            width: 1,
                            color: AppColors.black.withOpacity(0.3),
                          )),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      child: ListTile(
                        leading: Image.asset("assets/images/security_icon.png",
                            fit: BoxFit.fill),
                        title: CustomText(
                            text: 'Security',
                            textAlign: TextAlign.start,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.mainTextColor),
                        subtitle: CustomText(
                            text: '14 Experts',
                            textAlign: TextAlign.start,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.mainTextColor),
                        trailing: Icon(Icons.navigate_next, size: 30.w),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            width: 1,
                            color: AppColors.black.withOpacity(0.3),
                          )),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      child: ListTile(
                        leading: Image.asset("assets/images/hr_icon.png",
                            fit: BoxFit.fill),
                        title: CustomText(
                            text: 'Human Resource',
                            textAlign: TextAlign.start,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.mainTextColor),
                        subtitle: CustomText(
                            text: '8 Experts',
                            textAlign: TextAlign.start,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.mainTextColor),
                        trailing: Icon(Icons.navigate_next, size: 30.w),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            width: 1,
                            color: AppColors.black.withOpacity(0.3),
                          )),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      child: ListTile(
                        leading: Image.asset(
                            "assets/images/immigration_icon.png",
                            fit: BoxFit.fill),
                        title: CustomText(
                            text: 'Immigration',
                            textAlign: TextAlign.start,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.mainTextColor),
                        subtitle: CustomText(
                            text: '18 Experts',
                            textAlign: TextAlign.start,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.mainTextColor),
                        trailing: Icon(Icons.navigate_next, size: 30.w),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            width: 1,
                            color: AppColors.black.withOpacity(0.3),
                          )),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      child: ListTile(
                        leading: Image.asset(
                            "assets/images/translation_icon.png",
                            fit: BoxFit.fill),
                        title: CustomText(
                            text: 'Translation',
                            textAlign: TextAlign.start,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.mainTextColor),
                        subtitle: CustomText(
                            text: '3 Experts',
                            textAlign: TextAlign.start,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.mainTextColor),
                        trailing: Icon(Icons.navigate_next, size: 30.w),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            width: 1,
                            color: AppColors.black.withOpacity(0.3),
                          )),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r)),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
