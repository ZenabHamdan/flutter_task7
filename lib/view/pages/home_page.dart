import 'package:task7/exports/exports.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task7/core/constants/app_colors.dart';
import 'package:task7/core/constants/app_images.dart';
import '../../widgets/indicator_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<String> imageUrls = [
    // Your image URLs go here
    'https://s3-alpha-sig.figma.com/img/769d/bc82/a55bea1959a0fa715050ad9a79481283?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=W1SPiMlYGExR98CyRC9TGaPzFIkjlimgUOZe6EywpCIC5P5b8h-E9FmTwy2RIL2razcLdW9dT7xlHRPuhZYJIT-NDeNmfy~eutB62uceqZm2DFz9N5PyS1BcNwf6VE2SslLj9kXyZYZ6tPM9kMj45Hfxasv-UjvQrWlUQADuACYORdPkM~6NzYvHcHyzs5R5YRQRVAUkfkWCZ4d1m1boftJRE8fe7j-go8yqwIMMNBsp3ZWfSnJK0S5Za1Rc1NCPNAwegt86eSbUCjS7lMzTUq3~ZirDAX6gnk3vWp-XPUuwNfqM8uVXgRGaZh2dzpSbTT5phxsjFkqRcNL0W0A5uA__',
    'https://s3-alpha-sig.figma.com/img/6bad/30d4/accf44b34248713b5f617b87cef84150?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=emCbo1aROYtXUozH0rObzBbK1PnDYoU1KVSVYO1YQNXJacmrYAmAIsJ1OYbSXgnSuXRD1Sj4EFnQixeE3iS35j2qRo9kCYckNKXsT7AeJxlSmi5hpL5IcGwKN9WkXSKPBuDquj7q4emMqB382J-Os7rh5uJqfcggZtWuSPSIoyL~TaoCacMIzHqQbrVinskfz4eX-GJuR5XxoBcDie-VrGA~yesj17Q0Eh3-kYiDMrGvhVzujyespTCoSnyvdQQnypoqyER2BPnenAQKoSQQogxmaFK5aMZd84i~BY19IETPOU6k1rnOntk0Np4L66ZC8egKotryiYHlEAU6e8yRpQ__',
    'https://s3-alpha-sig.figma.com/img/52df/b937/d126ebfa3975d2b835b0f444cb257c42?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=A1gnoWlWiTa8nYAF8twsx4vH0OZf4PcdZtuLAfQ5JsVb0p7zUVo-dujcPJMLDCnNruKwfWgcQ10fl9p1KZL3BVp6oFYbqwdPWg9yaDQxR12HlV0N~uzrRwbw~TLJuwYdLhXgvTRKmZCpMNrP87jqsgTDYdMoWAg~MLQF6u8LSCv6VQJLp9SWqNlriGi-uk7~MtPL6kmTFF98mfCL83gVrtDfq37qHvaGFaVCLKbzYDXepb7aehKAhzJHwmQ5x1vl7VfdLdrOTT4WcUjc9gl-QLgAgT2Cqe0yhCReYYDqFveaaZQX2YTBTUntpu0kxEFz-SUk~aX82lgVpwUMqgyEKg__',
    'https://s3-alpha-sig.figma.com/img/77e2/b654/94387eafcf1506faba7e10f1daf9bde5?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=d0pxKs82KPjvMdqwQqZXbpT6g650UorpRr44loGLlh9hBtJeFAFpzUo5QOuW8C2rwUBVWcMBoLjrGsI0l3OtwUY7jIpe2gYtPAafN6sdH2jEpSmQohYK3eC0Raqgk7lM8XajUMZMSu-UwQYOeezQioN98v8wUghkhHj9ZEeGPuSdvbcFmTOqmf6KNxUOlH4P-4CB8oaILnYHJYhACFje2uA34qCKvzR45EJt3yaKCeVkBTtp4BN5-TUvH69yO-SKYazPev3OW-3-dgYbkMje6f9Ihu51odGMf3iQq3hIo6P474go~QUkOBphlZFn4a3al6HnTif-tKnVmI-pttkg6g__',
    'https://media.licdn.com/dms/image/C4D03AQGCx8O7V7As2w/profile-displayphoto-shrink_800_800/0/1586718907869?e=2147483647&v=beta&t=g6F8P-_pD8vjZDJ7CFoLphNfcn0bdDAxqvUgIiPlrok',
    'https://wallpapercave.com/wp/wp3720008.jpg'
  ];

  final List<String> secondImageUrls = [
    "https://s3-alpha-sig.figma.com/img/09bf/2257/d9e9cd81b43776848f37db65e74f54a1?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qxj2nuPAIcM75O9fb5NM~LsJRA5XpYS7k8qcv9znJ4ouDUyntC1yq2HW3lO-liVJ~7scXGJaV0LZmhBB7VxhmXs53bVzf-3ZZ807e3d-FtBP8ejs4buxdVFbBHlDu4wo7bePGquRdveDVmJNTLUJJRtmZ6y1bQfXwyBrzK9EHs-xK5tfoXmHgRqdZGA8AFlq6h6XQj450Ib7Thx94ddi-P0ONCoiwvdJoxl1xuL-Q2qe2MPxVtjmUy1~nPFiskB6-wG4AlLoMZxvw~LACuTOmKrPvalwTwmvIFfhe7Ihhzv4oy5VODwdhaHi5o2Zb~Qz~YIfRHzNYn1opW6ecJgegg__",
    "https://s3-alpha-sig.figma.com/img/c957/850e/20ba7b04543e269724abdf2b0e345071?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=K5ifgTChLitvR1zWy2Z2jiJe8gl7JCgmuM~dIgmbFi9w3aETH1mURmtieMghslNfberWwQM5gA9bXBkCjOGpb0-mJSz4dAdg8jKCIgmXElZm-NeXYjIiT-NmEYrOHa9HO0~5EUb4GG67TxRcy45-VLjmrG7m-hy3UtxeWPEfyNq5J4kWTuVhyTw5R9v~4zG~Zg8dtQlIwQydtbE9AYTfyFkWXgO~eND6hQpF3RZ7u9uPq152u1bLxCbQZUWXyUELLQ1LJNx8-d3LwYlXRlVDQPjJokHW2rLGvHhoEcmFGtAO2luMmR4xh7DcXe6uZu30YAiWl2HI1ATzRO5Jqq9ucw__",
    "https://www.theschoolrun.com/sites/theschoolrun.com/files/article_images/what_is_a_programming_language.jpg"
  ];

  final List<String> thirdImageUrls = [
    // Your image URLs go here
    'https://s3-alpha-sig.figma.com/img/b25c/32a1/e3d651c473e18144d5cc76fa50f56af8?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ipR2-A7MtFEDdeIaRUGMT90ob~AY1BWzhCKQKLQIfE3SKZA4CQ5ocTQL1H2NCKnACfS-ihugdy7IU8-tHMI95tB8L2XjxUxcwCu251rxd~EjkNURCCqNQFS3dZnkIlmth5sLdsmh0Kx88ca7YGD1greaqnXG6y3kzfRe5Rx01hVrECKKYK2U8WVjS5ZsCrIb9pRRJY0csXESWjCIoY3RmojeatO21289nHqjV0Ayx3PB38B69Mg03u45lIYJgWCE0B5lnkzvsCF1VVwoRSNqdQ7wVJiKuPPI0bPPspTAlTWS2~iM4QVO4Dnju310j9kQ0-NYLuSWsd2-l~CzM2YsRg__',
    'https://4.bp.blogspot.com/-OTOGeQS-3ns/T56tAn1kU0I/AAAAAAAAG7k/x2sx7_bHy88/s1600/Time2.JPG',
    'https://celebmafia.com/wp-content/uploads/2017/10/gigi-hadid-glamour-magazine-december-2017-photos-3.jpg'
  ];

  final List<String> labels = ["All", "UI/UX", "Illustration", "3D Animated"];

  List<String> stepTexts = [
    "Step design sprint for\nbeginner",
    "Basics of design\nillustrator",
    "Tammalle Maak w law hata\n Beed Ane",
    // Add more texts for each image as needed
  ];

  List<String> nameTexts = [
    "Laurel Seilha",
    "Abrar Soufi",
    "Barbora Al Soufi",
  ];

  List<String> descriptionTexts = [
    "Product Designer",
    "Full Stack Developer",
    "Flutter Developer",
  ];

  List<String> thirdText = [
    "Free",
    "100 \$",
    "400 \$",
  ];

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
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(left: 14.72.w, top: 69.32.h),
          child: Transform.rotate(
            angle: 0.00488,
            child: Stack(
              children: [
                ClipOval(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://s3-alpha-sig.figma.com/img/24c5/6156/1440c52b7db7866898da16ac1fea6ab0?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=TppmtoPAtdwrlIyXP3VK5W1Ly83-O6eT7Lml5iX-gI4Kv-F5g2YzgA1EBPkBEyvgeCtpx8EuQLEuZLGd0gO6yTrJturlMO8GxhcyZ2kdpKQIZ4VqV~fpEAW-rfU~tH2LRXkXDBafZCM2ONrXev39-E5vFkiCQ~xUHCesgNM1w0OhL3Xe60Q3Z6NZWXNu0dKMIfc2IGrdUgLt-GBDoeXTaFvIYTVBtE~w-wGBpjA02qzbGSRIrAJY0TRHCzeUUHDvGoscncyCnn7wCvCi4GoMAgcLtEolpqORK1~Gur1Ff0lKQq0QRNeUwog6YJLiRcagC2lzvkUK5Rkwqp4nlzE30g__',
                      width: 44.09.w,
                      height: 44.09.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 31.14.h,
                  left: 31.2.w,
                  child: Transform.rotate(
                    angle: 0.00488,
                    child: SvgPicture.asset('assets/icons/Ellipse 1.svg'),
                  ),
                ),
              ],
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 69.03.w, top: 67.32.h), // Adjust margin
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
            margin:
                EdgeInsets.only(left: 64.36.w, top: 95.53.h), // Adjust margin
            child: SvgPicture.asset(
              AppImages.awardIcon,
              width: 16.44.w,
              height: 16.44.h,
            )),

        Container(
          margin: EdgeInsets.only(left: 85.w, top: 95.53.h), // Adjust margin
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
          margin: EdgeInsets.only(left: 133.w, top: 95.53.h), // Adjust margin
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
            margin: EdgeInsets.only(left: 330.57.w, top: 66.69.h),
            child: SvgPicture.asset(
              AppImages.notificationsIcon,
              width: 23.65.w,
              height: 23.65.h,
            )),

        // If you have more content below the AppBar, add it here
        // Example: a ListView or other widgets
        Stack(
          children: [
            Positioned(
              top: 145.99.h,
              left: 14.78.w,
              child: SizedBox(
                height: 80.h, // Height for individual image container
                width: MediaQuery.of(context)
                    .size
                    .width, // Full-width scrollable area
                child: ListView.builder(
                  clipBehavior: Clip
                      .none, // هي مشان العناصر تقبل التمدد خارج الاطار اذا حطينا نثلا ايقونة عالصورة ما تنقطش لانها قطعت الحدود
                  scrollDirection: Axis.horizontal,
                  itemCount: imageUrls.length, // Number of images
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          right: 19.8875.w), // Add spacing between images
                      child: Transform.rotate(
                        angle: 0.00488,
                        child: Stack(
                          clipBehavior: Clip
                              .none, // Allow positioning outside the container
                          children: [
                            Container(
                              width: 75.w, // Outer width
                              height: 80.h, // Outer height
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(21.65.r),
                                border: Border.all(
                                    color: AppColors.buttonColor,
                                    width: 4.51.w), // Outer border
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.buttonColor.withOpacity(
                                        0.5), // Color for the glow effect
                                    spreadRadius:
                                        3.r, // How much the glow expands
                                    blurRadius: 10.r, // How blurry the glow is
                                    offset: Offset(
                                        0, 0), // No offset for centered glow
                                  ),
                                ],
                              ),
                              child: Container(
                                width: 63.28.w,
                                height: 62.76.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(21.65.r),
                                  border: Border.all(
                                      color: AppColors.buttonTextColor,
                                      width: 2.71.w),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      21.65.r), // Match inner border radius
                                  child: Image.network(
                                    imageUrls[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: -1
                                  .h, // Adjust as needed for placement outside the border
                              right: -1
                                  .w, // Adjust as needed for placement outside the border
                              child: Container(
                                width:
                                    25.7.w, // Slightly larger for white border
                                height: 25.7.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors
                                      .fieldsColor, // White circular border
                                ),
                                child: Center(
                                  child: Container(
                                    width: 21.7.w,
                                    height: 21.7.h,
                                    decoration: BoxDecoration(
                                      color: Color(
                                          0xff4DC9D1), // Blue circular background
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          3.0), // Add padding if needed
                                      child: SvgPicture.asset(
                                        'assets/icons/Video.svg',
                                        width: 12.04.w,
                                        height: 8.97.h,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 250.46
              .h, // Use ScreenUtil to scale for different screen sizes if needed
          left: 15.21.w, // Same scaling applied here
          child: Text(
            'Upcoming', // Replace with the desired text
            style: TextStyle(
              fontSize: 16.24.sp, // Adjust font size as needed
              fontWeight: FontWeight.w600, // Customize the font style
            ),
          ),
        ),
        Positioned(
          top: 250.46
              .h, // Use ScreenUtil to scale for different screen sizes if needed
          left: 110.21.w, // Same scaling applied here
          child: Text(
            'course of this week', // Replace with the desired text
            style: TextStyle(
              fontSize: 16.24.sp, // Adjust font size as needed
              fontWeight: FontWeight.w400, // Customize the font style
            ),
          ),
        ),
        Positioned(
          top: 297.39.h,
          left: 15.4.w,
          child: SizedBox(
            height: 37.16.h,
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
                    padding: EdgeInsets.only(right: 16.w), //
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
          bottom: 30.h,
          left: 15.69.w,
          child: SizedBox(
            height: 329.13.h,
            width:
                MediaQuery.of(context).size.width, // Full-width scrollable area
            child: ListView.builder(
              controller: _pageController,
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: secondImageUrls.length,
              itemBuilder: (context, index) {
                double scale = (index == _currentIndex)
                    ? 1.0
                    : 0.9; // Full size for the first item, smaller for others
                return Padding(
                  padding: EdgeInsets.only(
                      right: 19.8875.w), // Add spacing between images
                  child: Transform.scale(
                    scale: scale, // Apply scale factor
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21.65.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(0.75), // Shadow color with opacity
                            offset: Offset(3.54.w, 7.08.h), // X and Y offset
                            blurRadius: 14.16.r, // Blur radius
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(21.65.r),
                        child: Stack(
                          children: [
                            Image.network(
                              secondImageUrls[index],
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
                                    // Change: Darker gradient when not on the current image
                                    (index == _currentIndex)
                                        ? Colors.black.withOpacity(
                                            0.8) // Lighter gradient for active image
                                        : Colors.black.withOpacity(
                                            0.99), // Darker gradient for inactive images
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
                                        BorderRadius.circular(18.04.r),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Free e-book",
                                      style: TextStyle(
                                          color: AppColors.buttonTextColor),
                                    ),
                                  ),
                                ),
                              ),
                            Positioned(
                              top: 155.49.h,
                              left: 10.83.w,
                              child: Container(
                                child: Text(
                                  stepTexts[index],
                                  style: TextStyle(
                                    fontSize: 16.24.sp,
                                    color: AppColors.buttonTextColor,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 210.89.h,
                              left: 10.83.w,
                              child: SvgPicture.asset(
                                AppImages.stopWatchIcon,
                                width: 16.41.w,
                                height: 16.04.h,
                              ),
                            ),
                            Positioned(
                              top: 210.80.h,
                              left: 30.78.w,
                              child: Container(
                                child: Text(
                                  '5h 21m',
                                  style: TextStyle(
                                    fontSize: 9.02.sp,
                                    color: AppColors.descriptionColor,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 250.97.h, // Specified top position
                              left: 10.78.w, // Specified left position
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors
                                      .blueIconColor, // Background color
                                  borderRadius: BorderRadius.circular(
                                      3.61.r), // Border radius
                                ),
                                alignment: Alignment
                                    .center, // Center text inside container
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                    '6 lessons', // Text to display inside container
                                    style: TextStyle(
                                      fontSize: 9.02.sp,
                                      color: AppColors
                                          .buttonTextColor, // Text color
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Positioned(
                              top: 250.97.h, // Specified top position
                              left: 70.78.w, // Specified left position
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors
                                      .facebookFieldColor, // Background color
                                  borderRadius: BorderRadius.circular(
                                      3.61.r), // Border radius
                                ),
                                alignment: Alignment
                                    .center, // Center text inside container
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                    'UI/UX', // Text to display inside container
                                    style: TextStyle(
                                      fontSize: 9.02.sp,
                                      color: AppColors
                                          .buttonTextColor, // Text color
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Positioned(
                              top: 250.97.h, // Specified top position
                              left: 110.78.w, // Specified left position
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors
                                      .purbleIconColor, // Background color
                                  borderRadius: BorderRadius.circular(
                                      3.61.r), // Border radius
                                ),
                                alignment: Alignment
                                    .center, // Center text inside container
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                    thirdText[
                                        index], // Text to display inside container
                                    style: TextStyle(
                                      fontSize: 9.02.sp,
                                      color: AppColors
                                          .buttonTextColor, // Text color
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Positioned(
                              top: 276.80.h,
                              left: 50.78.w,
                              child: Container(
                                child: Text(
                                  nameTexts[index], // Text displayed beside SVG
                                  style: TextStyle(
                                    fontSize: 14.44.sp,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.buttonTextColor,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 300.80.h,
                              left: 50.78.w,
                              child: Container(
                                child: Text(
                                  descriptionTexts[
                                      index], // Text displayed beside SVG
                                  style: TextStyle(
                                    fontSize: 9.02.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.hintTextColor,
                                  ),
                                ),
                              ),
                            ),
                            // Add more Positioned widgets as needed...
                            Positioned(
                              top: 276.0.h,
                              left: 10.78.w,
                              child: ClipOval(
                                child: Image.network(
                                  thirdImageUrls[index],
                                  width: 36.09.w,
                                  height: 36.09.h,
                                  fit: BoxFit.cover,
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
        ),
        Positioned(
          bottom: 14.0.h, // Specify your desired position from the bottom
          left: MediaQuery.of(context).size.width / 2 -
              40.0, // Centering the indicator horizontally
          child: // Image Indicator
              ImageIndicator(
            currentIndex: _currentIndex,
            itemCount: secondImageUrls.length,
          ),
        )
      ]),
    );
  }
}
