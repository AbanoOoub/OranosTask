import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oranos/business%20logic/navigation_screen_logic/navigation_cubit.dart';
import 'package:oranos/data/models/app_colors.dart';
import 'package:oranos/presentation/screens/home_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationScreenCubit(),
      child: BlocConsumer<NavigationScreenCubit, NavigationScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var navigationScreenCubit = NavigationScreenCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.white,
              elevation: 1,
              actions: [
                Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Icon(Icons.search, color: AppColors.black, size: 30.w),
                )
              ],
              centerTitle: true,
              title: Image.asset('assets/images/OranosLogo.png', scale: 1.7),
              leading: Padding(
                padding: EdgeInsets.all(15.w),
                child: CircleAvatar(
                  backgroundColor: AppColors.mainColor,
                  child: Icon(Icons.person, color: AppColors.white),
                ),
              ),
            ),
            body: navigationScreenCubit.screens[navigationScreenCubit.screenIndex],
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: navigationScreenCubit.screenIndex,
                selectedIconTheme:
                    IconThemeData(color: AppColors.mainColor, size: 30.h),
                selectedItemColor: AppColors.mainColor,
                unselectedIconTheme:
                    IconThemeData(color: AppColors.black, size: 25.h),
                onTap: (int index) {
                    navigationScreenCubit.updateIndex(index: index);
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.star_border_rounded), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_balance_wallet_outlined),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_outline), label: ""),
                ]),
          );
        },
      ),
    );
  }
}
