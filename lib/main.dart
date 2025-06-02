import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/resources/application_theme_manager.dart';
import 'core/resources/route_manager/route_generator.dart';
import 'core/resources/route_manager/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
          onGenerateRoute: RoutesGenerator.onGenerateRoutes,
          initialRoute: PageRoutesName.homeScreen,
          theme: ApplicationThemeManager.themeData,

        );
      },
    );
  }
}


