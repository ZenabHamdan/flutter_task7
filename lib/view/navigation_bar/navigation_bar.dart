import 'package:task7/exports/exports.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

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
      body: screens[currentIndex], 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.buttonColor,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SizedBox(height: 8.h),
                SvgPicture.asset(
                  currentIndex == 0
                      ? AppImages.menuIcon
                      : AppImages.menu2Icon,
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
                    currentIndex == 1 ? AppColors.buttonColor : Colors.grey,
                    BlendMode.srcIn,
                  ),
                  child: SvgPicture.asset(
                    AppImages.disableIcon,
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
                          ? AppImages.message2Icon
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
                    currentIndex == 3 ? AppColors.buttonColor : Colors.grey,
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