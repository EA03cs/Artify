import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DottedDivider extends StatelessWidget {
  final Color color;
  final int dotCount;

  const DottedDivider({
    Key? key,
    this.color = Colors.grey,
    this.dotCount = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(dotCount, (index) {
        return Expanded(
          child: Container(
            height: 1.h,
            color: index % 2 == 0 ? color : Colors.transparent,
          ),
        );
      }),
    );
  }
}