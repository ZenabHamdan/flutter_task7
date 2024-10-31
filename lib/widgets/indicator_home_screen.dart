import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task7/core/constants/app_colors.dart';

class ImageIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;

  const ImageIndicator({
    Key? key,
    required this.currentIndex,
    required this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          width: 13.52.w,
          height: 5.31.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.08),
            color: currentIndex == index ? AppColors.buttonColor : Colors.grey,
          ),
        );
      }),
    );
  }
}
