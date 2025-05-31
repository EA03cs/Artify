import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ntitask/core/resources/theme_color.dart';
import 'package:ntitask/features/Home/presentation/view/Widgets/buttonList.dart';
import 'package:ntitask/features/Home/presentation/view/Widgets/cardItem.dart';
import 'package:ntitask/features/Home/presentation/view/Widgets/followItem.dart';
import 'package:ntitask/features/Home/presentation/view/Widgets/homeText.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.w),
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'Selling the ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'MOST POPULAR',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: '\nNFT is only here',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              ButtonList(),
              SizedBox(height: 20.h),
              HomeText(title: 'Top Collection 🔥'),
              SizedBox(height: 20.h),
              CardItem(),
              SizedBox(height: 20.h),
              HomeText(title: 'Best Artist'),
              SizedBox(height: 20.h),
              FollowItem()
            ],
          ),
        ),
      ),
    );
  }
}

