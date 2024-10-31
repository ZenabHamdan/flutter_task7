import 'package:task7/exports/exports.dart';
import 'package:task7/view/login_screen/login_screen.dart';
import 'package:task7/widgets/custom_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 79.0.h, vertical: 79.0.w),
            child: SvgPicture.asset(AppImages.logoIcon),
          ),
          SizedBox(
            height: 140.0.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.0.h,
            ),
            child: Column(
              children: [
                Center(
                    child: Text(
                  "Welcome to Our Community",
                  style: AppTextStyles.welcomeText,
                )),
                SizedBox(
                  height: 4.11.h,
                ),
                Center(
                    child: Text(
                  "Best and popular apps for live education\ncourse from home",
                  style: AppTextStyles.subtitle,
                  textAlign: TextAlign.center, 
                )),
                SizedBox(
                  height: 55.11.h,
                ),
                Center(
                  child: CustomButton(
                    title: 'Get started',
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
