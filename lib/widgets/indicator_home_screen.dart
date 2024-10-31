import 'package:task7/exports/exports.dart';

class ImageIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;

  const ImageIndicator({
    super.key,
    required this.currentIndex,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5.0.w),
          width: 13.52.w,
          height: 5.31.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.08.r),
            color: currentIndex == index ? AppColors.buttonColor : Colors.grey,
          ),
        );
      }),
    );
  }
}
