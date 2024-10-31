import 'package:task7/exports/exports.dart';
import 'package:task7/core/constants/app_images.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task7/core/constants/app_colors.dart';
import 'package:task7/view/pages/disableScreen.dart';
import 'package:task7/view/pages/message_screen.dart';
import '../view/pages/home_page.dart';
import '../view/pages/profile_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  _NavigationBarScreenState createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int currentIndex = 0;

  // Define the screens for each navigation item
  final List<Widget> screens = [
    const HomeScreen(),
    const DisableScreen(),
    const MessagesScreen(),
    const ProfileScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex], // Show the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SizedBox(height: 8.h),
                SvgPicture.asset(
                  currentIndex == 0
                      ? AppImages.menuIcon
                      : 'assets/icons/menu2.svg',
                  width: 22.65.w,
                  height: 22.65.h,
                ),
                if (currentIndex == 0)
                  Container(
                    margin: EdgeInsets.only(top: 8.h),
                    height: 3.61.h,
                    width: 10.83.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.8.r),
                      color: AppColors.buttonColor,
                    ),
                  ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SizedBox(height: 8.h),
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    currentIndex == 1 ? Colors.orange : Colors.grey,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset(
                    'assets/icons/Discovery.png',
                    width: 22.65.w,
                    height: 22.65.h,
                  ),
                ),
                if (currentIndex == 1)
                  Container(
                    margin: EdgeInsets.only(top: 8.h),
                    height: 3.61.h,
                    width: 10.83.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.8.r),
                      color: AppColors.buttonColor,
                    ),
                  ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SizedBox(height: 8.h),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(height: 8.h),
                    SvgPicture.asset(
                      currentIndex == 2
                          ? 'assets/icons/message2.svg'
                          : AppImages.messageIcon,
                      width: 22.65.w,
                      height: 22.65.h,
                    ),
                    Positioned(
                      right: -5,
                      top: -7,
                      child: Container(
                        padding: EdgeInsets.all(1.8.r),
                        decoration: BoxDecoration(
                          color: AppColors.buttonColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: AppColors.buttonColor, width: 1.8.w),
                        ),
                        constraints: BoxConstraints(
                          minWidth: 13.53.w,
                          minHeight: 13.53.h,
                        ),
                        child: Transform.rotate(
                          angle: 0.28 * 3.14159 / 180,
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 9.02.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                if (currentIndex == 2)
                  Container(
                    margin: EdgeInsets.only(top: 8.h),
                    height: 3.61.h,
                    width: 10.83.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.8.r),
                      color: AppColors.buttonColor,
                    ),
                  ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SizedBox(height: 8.h),
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    currentIndex == 3 ? Colors.orange : Colors.grey,
                    BlendMode.srcIn,
                  ),
                  child: SvgPicture.asset(
                    AppImages.profileIcon,
                    width: 22.65.w,
                    height: 22.65.h,
                  ),
                ),
                if (currentIndex == 3)
                  Container(
                    margin: EdgeInsets.only(top: 8.h),
                    height: 3.61.h,
                    width: 10.83.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.8.r),
                      color: AppColors.buttonColor,
                    ),
                  ),
              ],
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
