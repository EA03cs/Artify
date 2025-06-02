import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'charAndColors.dart';
import 'custom_item_container.dart';


class DynamicSymbolGrid extends StatelessWidget {
  const DynamicSymbolGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 1,
      ),
      itemCount: SymbolPaletteData.symbols.length,
      itemBuilder: (context, index) {
        final symbol = SymbolPaletteData.symbols[index];
        final cardColor = SymbolPaletteData.palette[index % SymbolPaletteData.palette.length];
        return CustomItemContainer(
          title: symbol, backgroundColor: cardColor,
        );
      },
    );
  }
}
