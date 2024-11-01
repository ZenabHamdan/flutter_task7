import 'package:task7/exports/exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentIndex = _pageController.page?.ceil() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.buttonTextColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(85.h),
        child: AppBar(
          backgroundColor: AppColors.buttonTextColor,
          elevation: 0,
          flexibleSpace: Padding(
            padding: EdgeInsets.only(left: 14.72.w, top: 59.32.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Image with overlay
                Container(
                  width: 44.09.w, // Adjust as per your desired size
                  height: 44.09.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/24c5/6156/1440c52b7db7866898da16ac1fea6ab0?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=TppmtoPAtdwrlIyXP3VK5W1Ly83-O6eT7Lml5iX-gI4Kv-F5g2YzgA1EBPkBEyvgeCtpx8EuQLEuZLGd0gO6yTrJturlMO8GxhcyZ2kdpKQIZ4VqV~fpEAW-rfU~tH2LRXkXDBafZCM2ONrXev39-E5vFkiCQ~xUHCesgNM1w0OhL3Xe60Q3Z6NZWXNu0dKMIfc2IGrdUgLt-GBDoeXTaFvIYTVBtE~w-wGBpjA02qzbGSRIrAJY0TRHCzeUUHDvGoscncyCnn7wCvCi4GoMAgcLtEolpqORK1~Gur1Ff0lKQq0QRNeUwog6YJLiRcagC2lzvkUK5Rkwqp4nlzE30g__',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 32.14.h),
                  child: Transform.translate(
                    offset: Offset(-15.w, 0),
                    child: SvgPicture.asset(AppImages.ellipseIcon),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Greeting Text
                    Text(
                      'Hallo, Samuel!',
                      style: AppTextStyles.profileText.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.profileTextColor,
                      ),
                    ),

                    SizedBox(height: 5.h),

                    Row(
                      children: [
                        SvgPicture.asset(
                          AppImages.awardIcon,
                          width: 16.44.w,
                          height: 16.44.h,
                        ),
                        SizedBox(width: 4.w),
                        // +1600 Points Text
                        Text(
                          '+1600',
                          style: AppTextStyles.profileDescriptionText.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.greenColor,
                          ),
                        ),
                        SizedBox(width: 4.w),
                        // Points Label
                        Text(
                          'Points',
                          style: AppTextStyles.profileDescriptionText.copyWith(
                            color: AppColors.greenColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(width: 175.w),

                Container(
                  margin: EdgeInsets.only(top: 5.h),
                  child: SvgPicture.asset(
                    AppImages.notificationsIcon,
                    width: 23.65.w,
                    height: 23.65.h,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: StoriesWidgetList(imageUrls: ImageUrls.urls),
          ),
          Column(
            children: [
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.21.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Upcoming',
                      style: TextStyle(
                        fontSize: 16.24.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 10.w), // Space between the two texts
                    Text(
                      'course of this week',
                      style: TextStyle(
                        fontSize: 16.24.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          LabelsWidgetList(
            labels: Label.labels,
            selectedIndex: selectedIndex,
            onLabelTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
          SizedBox(height: 20.h),
          ImageSliderWidget(
            pageController: _pageController,
            currentIndex: _currentIndex,
            imageUrls: SecondImageURls.urls,
            stepTexts: StepText.stepTexts,
            nameTexts: NameText.nameTexts,
            descriptionTexts: DescriptionText.descriptionTexts,
            thirdTexts: ThirdText.thirdText,
            thirdImageUrls: ThirdImageURls.urls,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(top: 25.h),
              child: ImageIndicator(
                currentIndex: _currentIndex,
                itemCount: SecondImageURls.urls.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
