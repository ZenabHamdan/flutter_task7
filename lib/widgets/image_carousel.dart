import 'package:task7/core/constants/app_colors.dart';
import 'package:task7/core/constants/app_text_styles.dart';
import 'package:task7/exports/exports.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../core/constants/home_page_img_txt.dart';

class ImageSliderWidget extends StatelessWidget {
  final PageController pageController;
  final int currentIndex;
  final List<String> imageUrls;
  final List<String> stepTexts;
  final List<String> thirdImageUrls;
  final List<String> nameTexts;
  final List<String> descriptionTexts;
  final List<String> thirdTexts;

  const ImageSliderWidget({
    Key? key,
    required this.pageController,
    required this.currentIndex,
    required this.imageUrls,
    required this.stepTexts,
    required this.thirdImageUrls,
    required this.nameTexts,
    required this.descriptionTexts,
    required this.thirdTexts
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 329.13.h,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.69.w),
        child: ListView.builder(
          controller: pageController,
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            double scale = (index == currentIndex) ? 1.0 : 0.9;
            return Padding(
              padding: EdgeInsets.only(right: 19.8875.w),
              child: Transform.scale(
                scale: scale,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21.65.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.75),
                        offset: Offset(3.54.w, 7.08.h),
                        blurRadius: 14.16.r,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(21.65.r),
                    child: Stack(
                      children: [
                        Image.network(
                          imageUrls[index],
                          width: 270.81.w,
                          height: 329.13.h,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 270.81.w,
                          height: 329.13.h,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                (index == currentIndex)
                                    ? Colors.black.withOpacity(0.8)
                                    : Colors.black.withOpacity(0.99),
                              ],
                            ),
                          ),
                        ),
                        if (index == 0)
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.all(17),
                              child: Container(
                                width: 120.w,
                                height: 35.h,
                                padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 4.0.h),
                                decoration: BoxDecoration(
                                  color: AppColors.free_e_BookColor,
                                  borderRadius: BorderRadius.circular(18.04.r),
                                ),
                                child: Center(
                                  child: Text(
                                    "Free e-book",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.only(top: 155.49.h, left: 10.83.w),
                            child: Text(
                              stepTexts[index],
                              style: TextStyle(
                                fontSize: 16.24.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.only(top: 210.89.h, left: 10.83.w),
                            child: SvgPicture.asset(
                              'assets/path_to_your_icon.svg',
                              width: 16.41.w,
                              height: 16.04.h,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.only(top: 210.80.h, left: 30.78.w),
                            child: Text(
                              '5h 21m',
                              style: TextStyle(
                                fontSize: 9.02.sp,
                                color: AppColors.descriptionColor,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.w, bottom: 70.h),
                            child: Container(
                              width: 60.w,
                              height: 24.h,
                              decoration: BoxDecoration(
                                color: AppColors.blueIconColor,
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  '6 lessons',
                                  style: TextStyle(
                                    fontSize: 9.02.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 80.w, bottom: 70.h),
                            child: Container(
                              width: 40.w,
                              height: 24.h,
                              decoration: BoxDecoration(
                                color: AppColors.facebookFieldColor,
                                borderRadius: BorderRadius.circular(3.61.r),
                              ),
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  'UI/UX',
                                  style: TextStyle(
                                    fontSize: 9.02.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding:  EdgeInsets.only(left:135.w, bottom:70.h),
                            child: Container(
                              width: 35.w,
                              height: 24.h,
                              decoration: BoxDecoration(
                                color: AppColors.purbleIconColor,
                                borderRadius: BorderRadius.circular(3.61.r),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                ThirdText.thirdText[index],
                                style: TextStyle(
                                  fontSize: 9.02.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 60.w, bottom: 30.h),
                            child: Text(
                              nameTexts[index],
                              style: AppTextStyles.profileText.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 60.w, bottom: 15.h),
                            child: Text(
                              descriptionTexts[index],
                              style: TextStyle(
                                fontSize: 9.02.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.hintTextColor,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            padding: EdgeInsets.only(left: 10.78.w, bottom: 18.h),
                            child: ClipOval(
                              child: Image.network(
                                thirdImageUrls[index],
                                width: 36.09.w,
                                height: 36.09.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
