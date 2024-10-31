import 'package:task7/exports/exports.dart';

class ScreenUtilInit extends StatefulWidget {
  const ScreenUtilInit({super.key});

  @override
  State<ScreenUtilInit> createState() => _ScreenUtilInitState();
}

class _ScreenUtilInitState extends State<ScreenUtilInit> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,  // 5% of screen width
        vertical: 1.h,    // 1% of screen height
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(4.r),  // 4% radius
        ),
        child: Text(
          "Responsive Text",
          style: TextStyle(fontSize: 16.sp),  // Scalable font size
        ),
      ),
    );
  }
}