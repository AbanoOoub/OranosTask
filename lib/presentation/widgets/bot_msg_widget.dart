import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/app_colors.dart';

class BotMsgWidget extends StatefulWidget {
  const BotMsgWidget({Key? key, required this.msg, required this.withCategory})
      : super(key: key);

  final String msg;
  final bool withCategory;

  @override
  State<BotMsgWidget> createState() => _BotMsgWidgetState();
}

class _BotMsgWidgetState extends State<BotMsgWidget> {
  bool? check1 = false;
  bool? check2 = false;
  bool? check3 = false;
  bool? check4 = false;
  bool? check5 = false;

  @override
  Widget build(BuildContext context) {
    final checkBoxTheme = Theme.of(context).checkboxTheme.copyWith(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)));

    return Padding(
      padding: EdgeInsets.all(5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.secondColor,
            child: Image.asset("assets/images/bot.png"),
          ),
          SizedBox(width: 10.w),
          Container(
            width: 280.w,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 10.w, right: 10.w, top: 10.h, bottom: 10.h),
              child: widget.withCategory
                  ? Column(
                      children: [
                        Text(
                          widget.msg,
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: AppColors.mainTextColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Theme(
                          data: Theme.of(context).copyWith(checkboxTheme: checkBoxTheme),
                          child: CheckboxListTile(
                            activeColor: AppColors.mainColor,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                            value: check1,
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (bool? value) {
                              setState(() {
                                check1 = value;
                              });
                            },
                            title: const Text("Security"),
                          ),
                        ),
                        Theme(
                          data: Theme.of(context).copyWith(checkboxTheme: checkBoxTheme),
                          child: CheckboxListTile(
                            activeColor: AppColors.mainColor,
                            value: check2,
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (bool? value) {
                              setState(() {
                                check2 = value;
                              });
                            },
                            title: const Text("Supply Chain"),
                          ),
                        ),
                        Theme(
                          data: Theme.of(context).copyWith(checkboxTheme: checkBoxTheme),
                          child: CheckboxListTile(
                            activeColor: AppColors.mainColor,
                            value: check3,
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (bool? value) {
                              setState(() {
                                check3 = value;
                              });
                            },
                            title: const Text("IT"),
                          ),
                        ),
                        Theme(
                          data: Theme.of(context).copyWith(checkboxTheme: checkBoxTheme),

                          child: CheckboxListTile(
                            activeColor: AppColors.mainColor,
                            value: check4,
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (bool? value) {
                              setState(() {
                                check4 = value;
                              });
                            },
                            title: const Text("HR"),
                          ),
                        ),
                        Theme(
                          data: Theme.of(context).copyWith(checkboxTheme: checkBoxTheme),
                          child: CheckboxListTile(
                            activeColor: AppColors.mainColor,
                            value: check5,
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (bool? value) {
                              setState(() {
                                check5 = value;
                              });
                            },
                            title: const Text("Business Research"),
                          ),
                        ),
                        Text(
                          'Say Done to Apply',
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: AppColors.mainTextColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  : Text(
                      widget.msg,
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: AppColors.mainTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
            ),
            decoration: BoxDecoration(
              color: AppColors.secondColor,
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
          ),
        ],
      ),
    );
  }
}
