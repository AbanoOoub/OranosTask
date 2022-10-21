import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oranos/data/models/app_routes.dart';
import 'package:oranos/presentation/screens/get_started_screen.dart';
import 'package:oranos/presentation/screens/nav_screen.dart';
import 'package:oranos/presentation/screens/pre_start_screen.dart';
import 'package:oranos/presentation/screens/start_screen.dart';

import 'helpers/bloc_observer.dart';
import 'helpers/shared_prefs.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  CacheHelper.init();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Oranos',
          initialRoute: AppRoutes.startScreenRoute,
          routes: {
            AppRoutes.startScreenRoute: (context) => const StartScreen(),
            AppRoutes.preStartScreenRoute: (context) => const PreStartScreen(),
            AppRoutes.getStartedScreenRoute: (context) => GetStartedScreen(),
            AppRoutes.navigationScreenRoute: (context) => const NavigationScreen(),
          },
        );
      },
    );
  }
}
