import 'package:task7/exports/exports.dart';

class CourseCard extends StatefulWidget {
  final double scale;
  final CourseModel course;
  const CourseCard({
    super.key,
    required this.course,
    required this.scale,
  });

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  final int _currentIndex = 0;
  final PageController _pageController = PageController();

  final List<String> images = [
    AppImages.baseBackgroundImage,
    AppImages.baseBackgroundImage,
    AppImages.baseBackgroundImage,
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 30.h,
          left: 15.69.w,
          child: SizedBox(
            height: 329.13.h,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              controller: _pageController,
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                double scale = (index == _currentIndex) ? 1.0 : 0.9;
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
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const DetailScreen()));
                          },
                          child: Stack(
                            children: [
                              Image.asset(
                                images[index],
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
                                      (index == _currentIndex)
                                          ? Colors.black.withOpacity(0.8)
                                          : Colors.black.withOpacity(0.99),
                                    ],
                                  ),
                                ),
                              ),
                              if (index == 0)
                                Positioned(
                                  top: 13.61.h,
                                  left: 10.83,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.0.w, vertical: 4.0.h),
                                    decoration: BoxDecoration(
                                        color: AppColors.free_e_BookColor,
                                        borderRadius:
                                            BorderRadius.circular(18.04.r)),
                                    child: Text(
                                      "Free e-book",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9.02.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              Positioned(
                                top: 155.49.h,
                                left: 10.83.w,
                                child: Text(
                                  widget.course.title,
                                  style: TextStyle(
                                    fontSize: 16.24.sp,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.buttonTextColor,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 207.80.h,
                                left: 10.83.w,
                                child: SvgPicture.asset(
                                  AppImages.stopWatchIcon,
                                  width: 16.41.w,
                                  height: 16.04.h,
                                ),
                              ),
                              Positioned(
                                top: 210.80.h,
                                left: 25.78.w,
                                child: Text(
                                  widget.course.duration,
                                  style: TextStyle(
                                    fontSize: 9.02.sp,
                                    color: AppColors.descriptionColor,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 210,
                                left: 18,
                                child: Row(
                                  children: [
                                    _buildChip(
                                        '6 lessons', AppColors.blueIconColor),
                                    SizedBox(width: 7.14.w),
                                    _buildChip(
                                        'UI/UX', AppColors.facebookFieldColor),
                                    SizedBox(width: 7.14.w),
                                    _buildChip('Free', AppColors.purbleIconColor),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 265.80.h,
                                left: 15.78.w,
                                child: Container(
                                  width: 36.0.w,
                                  height: 36.0.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          widget.course.profilePicture),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 270.80.h,
                                left: 60.78.w,
                                child: Text(
                                  widget.course.instructorName,
                                  style: TextStyle(
                                    fontSize: 14.44.sp,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.buttonTextColor,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 290.80.h,
                                left: 60.78.w,
                                child: Text(
                                  widget.course.instructorTitle,
                                  style: TextStyle(
                                    fontSize: 9.02.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.hintTextColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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

Widget _buildChip(String label, Color color) {
  return Container(
    width: 49.65.w,
    height: 17.09.h,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(3.61.r),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.65.w, vertical: 2.82.h),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
              fontSize: 9.02.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              decoration: TextDecoration.none),
        ),
      ),
    ),
  );
}
