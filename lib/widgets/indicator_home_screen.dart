<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task7/core/constants/app_colors.dart';
=======
import 'package:task7/exports/exports.dart';
>>>>>>> main-branch

class ImageIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;

  const ImageIndicator({
<<<<<<< HEAD
    Key? key,
    required this.currentIndex,
    required this.itemCount,
  }) : super(key: key);
=======
    super.key,
    required this.currentIndex,
    required this.itemCount,
  });
>>>>>>> main-branch

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        return Container(
<<<<<<< HEAD
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          width: 13.52.w,
          height: 5.31.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.08),
=======
          margin: EdgeInsets.symmetric(horizontal: 5.0.w),
          width: 13.52.w,
          height: 5.31.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.08.r),
>>>>>>> main-branch
            color: currentIndex == index ? AppColors.buttonColor : Colors.grey,
          ),
        );
      }),
    );
  }
}
