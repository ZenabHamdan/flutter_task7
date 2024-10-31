import 'package:task7/exports/exports.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final CourseModel course = CourseModel.courses[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: Row(
          children: [
            const Spacer(
              flex: 2,
            ),
            Container(
                width: 39.w,
                height: 39.h,
                decoration: BoxDecoration(
                  color: const Color(0xffF6F7FA),
                  borderRadius: BorderRadius.circular(7.22.r),
                ),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    // ignore: deprecated_member_use
                    icon: SvgPicture.asset(
                      AppImages.backArrowIcon,
                      color: AppColors.buttonColor,
                    ))),
          ],
        ),
        title: Text(
          "Detail course",
          style: AppTextStyles.title,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 20.h),
            child: SvgPicture.asset(AppImages.notificationsIcon),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  Image.asset(
                    AppImages.baseImage,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      top: 71,
                      bottom: 71,
                      left: 122,
                      right: 122,
                      child: SvgPicture.asset(
                        AppImages.ctaIcon,
                        width: 64.w,
                        height: 64.h,
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course.title,
                    style: AppTextStyles.courseTitle,
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 49.65.w,
                        height: 17.09.h,
                        decoration: BoxDecoration(
                            color: Color(0xff4DC9D1),
                            borderRadius: BorderRadius.circular(3.61.r)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.65.w, vertical: 1.82.h),
                          child: Center(
                              child: Text(
                            "6 lessons",
                            style: AppTextStyles.chipText,
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 7.14.w,
                      ),
                      Container(
                        width: 39.22.w,
                        height: 17.61.h,
                        decoration: BoxDecoration(
                            color: Color(0xff0082CD),
                            borderRadius: BorderRadius.circular(3.61.r)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.65.w, vertical: 1.82.h),
                          child: Center(
                              child: Text(
                            "UI/UX",
                            style: AppTextStyles.chipText,
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 7.14.w,
                      ),
                      Container(
                        width: 27.08.w,
                        height: 17.09.h,
                        decoration: BoxDecoration(
                            color: Color(0xff8D5EF2),
                            borderRadius: BorderRadius.circular(3.61.r)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.65.w, vertical: 1.82.h),
                          child: Center(
                              child: Text(
                            "Free",
                            style: AppTextStyles.chipText,
                          )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    course.description,
                    style: AppTextStyles.profileDescriptionText,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
              child: Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(course.profilePicture),
                        radius: 24.r,
                      ),
                      Positioned(
                        bottom: 1,
                        right: 1,
                        child: Container(
                          width: 12.0.w,
                          height: 12.0.h,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.instructorName,
                        style: AppTextStyles.profileText,
                      ),
                      Text(
                        course.instructorTitle,
                        style: AppTextStyles.subText,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 150.w,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppImages.stopWatchIcon,
                            width: 14.45.w,
                            height: 14.39.h,
                          ),
                          SizedBox(
                            width: 7.15,
                          ),
                          Text(
                            course.duration,
                            style: AppTextStyles.subText,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 6.93.h,
                      ),
                      Container(
                        width: 55.64.w,
                        height: 20.69.h,
                        decoration: BoxDecoration(
                            color: const Color(0xffFCCC75),
                            borderRadius: BorderRadius.circular(18.04.r)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 3.16),
                          child: Center(
                            child: Text(
                              "Free e-book",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 7.sp),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 19.58.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Container(
                width: 338.w,
                height: 88.h,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Color(0xffF6F7FA),
                  borderRadius: BorderRadius.circular(7.88.r),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 66.w,
                      height: 66.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFFF8500),
                            Color(0xFFEC5F5F).withOpacity(0)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 28.sp,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'How to get feedback on their\nproducts in just 5 days',
                          style: TextStyle(
                            fontSize: 13.8.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.profileTextColor,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          '04:10m',
                          style: TextStyle(
                            fontSize: 13.8.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.descriptionColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Container(
                width: 338.w,
                height: 88.h,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color(0xffF6F7FA),
                  borderRadius: BorderRadius.circular(7.88.r),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 66.w,
                      height: 66.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: const Color(0xffEC5F5F),
                        size: 28.sp,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'How to decide which prototype\nto implement',
                          style: TextStyle(
                            fontSize: 13.8.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.profileTextColor,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          '08:25m',
                          style: TextStyle(
                            fontSize: 13.8.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.descriptionColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.h),
              child: CustomButton(
                  title: 'Follow class',
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(16.0),
                          ),
                        ),
                        builder: (context) => const BottomSheetScreen());
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
