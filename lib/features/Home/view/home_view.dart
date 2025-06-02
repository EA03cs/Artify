import 'package:flutter/material.dart';

import '../../../core/resources/con_text.dart';
import '../../../core/resources/theme_color.dart';
import '../widget/AppPar.dart';
import '../widget/gridView.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: apBarrr(title: ConstText.HomeScreen),
      body: const DynamicSymbolGrid(),
    );
  }
}
