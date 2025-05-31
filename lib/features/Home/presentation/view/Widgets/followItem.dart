import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ntitask/features/collection/presentation/view/collection.dart';

import 'custbottom.dart';

class FollowItem extends StatelessWidget {
  const FollowItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) =>  Collection(),
        ));
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundImage: AssetImage('assets/Image.png'),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'kendrick lamar',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5.h),
              Text(
                '125k Followers',
                style: TextStyle(fontSize: 14.sp, color: Colors.grey),
              ),
            ],
          ),
          Spacer(),
          CustomButton(text: 'Follow', isSelected: true, onTap: () {}),
        ],
      ),
    );
  }
}
