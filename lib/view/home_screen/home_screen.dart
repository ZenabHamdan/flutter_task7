import 'package:task7/exports/exports.dart';
import 'package:task7/widgets/course_list.dart';
import 'package:task7/widgets/stories_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CourseModel course = CourseModel();
 

  int selectedIndex = 0;

  final List<String> labels = ["All", "UI/UX", "Illustration", "3D Animated"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.buttonTextColor,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 14.72.w, top: 69.32.h),
            child: Transform.rotate(
              angle: 0.00488,
              child: Stack(
                children: [
                  Container(
                    width: 37.09.w,
                    height: 37.09.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppImages.avatarImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 25.14.h,
                    left: 25.2.w,
                    child: Transform.rotate(
                      angle: 0.00488,
                      child: SvgPicture.asset(AppImages.ellipseIcon),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 69.03.w, top: 67.32.h),
            child: Text(
              'Hallo, Samuel!',
              style: TextStyle(
                fontSize: 14.44.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.profileTextColor,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 64.36.w, top: 88.53.h),
              child: SvgPicture.asset(
                AppImages.awardIcon,
                width: 16.44.w,
                height: 16.44.h,
              )),
          Container(
            margin: EdgeInsets.only(left: 78.w, top: 88.53.h),
            child: Text(
              '+1600',
              style: TextStyle(
                fontSize: 12.63.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xff4ED442),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 117.w, top: 88.53.h),
            child: Text(
              'Points',
              style: TextStyle(
                fontSize: 12.63.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff4ED442),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 330.57.w, top: 75.69.h),
              child: SvgPicture.asset(
                AppImages.notificationsIcon,
                width: 23.65.w,
                height: 23.65.h,
              )),
          StoriesWidgets(),
          Positioned(
            top: 250.46.h,
            left: 15.21.w,
            child: Text(
              'Upcoming',
              style: TextStyle(
                fontSize: 16.24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            top: 250.46.h,
            left: 88.21.w,
            child: Text(
              'course of this week',
              style: TextStyle(
                fontSize: 16.24.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            top: 297.39.h,
            left: 15.4.w,
            child: SizedBox(
              height: 40.16.h,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: labels.length,
                itemBuilder: (context, index) {
                  final isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 14.w),
                      child: Transform.rotate(
                        angle: 0.00488,
                        child: Container(
                          height: 37.16.h,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.buttonColor
                                : AppColors.fieldsColor,
                            borderRadius: BorderRadius.circular(7.22.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
                            child: Center(
                              child: Text(
                                labels[index],
                                style: TextStyle(
                                  fontSize: 12.63.sp,
                                  fontWeight: FontWeight.w500,
                                  color: isSelected
                                      ? AppColors.fieldsColor
                                      : AppColors.hintTextColor,
                                ),
                              ),
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
          Positioned(
            top: 320.h,
            left: 3,
            right: 0,
            child: const CourseList(),
          ),
        ],
      ),
    );
  }
}
