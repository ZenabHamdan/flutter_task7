import 'package:task7/exports/exports.dart';

class StoriesWidgets extends StatelessWidget {
  final List<String> storyImages = [
    AppImages.image1,
    AppImages.image2,
    AppImages.image3,
    AppImages.image4,
    AppImages.image1,
    AppImages.image2,
  ];

  StoriesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 145.99.h,
          left: 14.78.w,
          child: SizedBox(
            height: 80.h, 
            width:
                MediaQuery.of(context).size.width, 
            child: ListView.builder(
              clipBehavior: Clip
                  .none,
              scrollDirection: Axis.horizontal,
              itemCount: storyImages.length, 
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      right: 19.8875.w), 
                  child: Transform.rotate(
                    angle: 0.00488,
                    child: Stack(
                      clipBehavior:
                          Clip.none, 
                      children: [
                        Container(
                          width: 75.w,
                          height: 80.h, 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21.65.r),
                            border: Border.all(
                                color: AppColors.buttonColor,
                                width: 4.51.w), 
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.buttonColor.withOpacity(
                                    0.5), 
                                spreadRadius: 3.r, 
                                blurRadius: 10.r, 
                                offset:
                                    Offset(0, 0), 
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
                                  21.65.r), 
                              child: Image.asset(
                                storyImages[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -1
                              .h, 
                          right: -1
                              .w, 
                          child: Container(
                            width: 25.7.w, 
                            height: 25.7.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors
                                  .fieldsColor, 
                            ),
                            child: Center(
                              child: Container(
                                width: 21.7.w,
                                height: 21.7.h,
                                decoration: const BoxDecoration(
                                  color: Color(
                                      0xff4DC9D1),
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: SvgPicture.asset(
                                    AppImages.videoIcon,
                                   
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
    );
  }
}
