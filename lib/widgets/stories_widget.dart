import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task7/core/constants/app_colors.dart';

class StoriesWidgetList extends StatelessWidget {
  final List<String> imageUrls;

  const StoriesWidgetList({Key? key, required this.imageUrls}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 20.h), // Space to position the ListView
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.78.w),
          child: SizedBox(
            height: 80.h,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 19.8875.w),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      // Image container
                      Container(
                        width: 75.w, // Outer width
                        height: 80.h, // Outer height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21.65.r),
                          border: Border.all(
                            color: AppColors.buttonColor,
                            width: 4.51.w,
                          ), // Outer border
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.buttonColor.withOpacity(0.5),
                              spreadRadius: 3.r,
                              blurRadius: 10.r,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Container(
                            width: 70.w, // Inner container width
                            height: 70.h, // Inner container height
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(21.65.r),
                              border: Border.all(
                                color: Color(0xffFFFFFF),
                                width: 2.71.w,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(21.65.r),
                              child: Image.network(
                                imageUrls[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: 25.7.w,
                          height: 25.7.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Container(
                              width: 21.7.w,
                              height: 21.7.h,
                              decoration: BoxDecoration(
                                color: Color(0xff4DC9D1),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5.0.sp),
                                child: SvgPicture.asset(
                                  'assets/icons/Video.svg',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
