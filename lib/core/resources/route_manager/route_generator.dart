import 'package:flutter/material.dart';
import 'package:task_two/core/resources/route_manager/routes.dart';

import '../../../Features/home/view/home_view.dart';

class RoutesGenerator {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case PageRoutesName.homeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreenView(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => HomeScreenView(),
          settings: settings,
        );
    }
  }
}
