import 'package:flutter/material.dart';

import '../../../core/resources/application_theme_manager.dart';

AppBar apBarrr({required String title}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title,
      style: ApplicationThemeManager.themeData.textTheme.bodyLarge,
    ),
    centerTitle: true,
  );
}
