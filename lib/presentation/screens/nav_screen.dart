import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oranos/data/models/app_colors.dart';
import 'package:oranos/presentation/screens/home_screen.dart';
import 'package:oranos/presentation/screens/pre_start_screen.dart';

class NavigationScreen extends StatefulWidget {
  NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int screenIndex = 0;

  final screens = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
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
      body: screens[screenIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: screenIndex,
          selectedIconTheme: IconThemeData(color: AppColors.mainColor, size: 30.h),
          selectedItemColor: AppColors.mainColor,
          unselectedIconTheme: IconThemeData(color: AppColors.black,size: 25.h),
          onTap: (int index) {
            setState(() {
              screenIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.star_border_rounded),label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_outlined),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: ""),
          ]),
    );
  }
}
