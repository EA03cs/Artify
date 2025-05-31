import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeText extends StatelessWidget {
  const HomeText({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        Icon(
          Icons.more_horiz_outlined,
          size: 25.sp,
          color: Colors.grey,
        ),
      ],
    );
  }
}
