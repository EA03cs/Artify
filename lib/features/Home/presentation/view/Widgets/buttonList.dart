import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custbottom.dart';

class ButtonList extends StatefulWidget {
  const ButtonList({super.key});

  @override
  State<ButtonList> createState() => _ButtonListState();
}
String selectedButton = 'Trending';
class _ButtonListState extends State<ButtonList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CustomButton(
            text: 'Trending',
            isSelected: selectedButton == 'Trending',
            onTap: () {
              setState(() {
                selectedButton = 'Trending';
              });
            },
          ),
          SizedBox(width: 10.w),
          CustomButton(
            text: 'By Artist',
            isSelected: selectedButton == 'By Artist',
            onTap: () {
              setState(() {
                selectedButton = 'By Artist';
              });
            },
          ),
          SizedBox(width: 10.w),
          CustomButton(
            text: 'Eth',
            isSelected: selectedButton == 'Eth',
            onTap: () {
              setState(() {
                selectedButton = 'Eth';
              });
            },
          ),
          SizedBox(width: 10.w),
          CustomButton(
            text: 'Btc',
            isSelected: selectedButton == 'Btc',
            onTap: () {
              setState(() {
                selectedButton = 'Btc';
              });
            },
          ),
        ],
      ),
    );
  }
}
