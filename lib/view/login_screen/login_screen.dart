import 'package:task7/exports/exports.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.0.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 71.0, bottom: 40.0),
                child: SvgPicture.asset(AppImages.logoImage),
              ),
              CustomTextFormField(
                controller: emailController,
                keyboardType: TextInputType.text,
                validator: emailValidator,
                hintText: 'Email',
                hintStyle: AppTextStyles.hintText,
              ),
              SizedBox(
                height: 12.9.h,
              ),
              CustomTextFormField(
                controller: passwordController,
                keyboardType: TextInputType.text,
                validator: passwordValidator,
                hintText: 'Password',
                hintStyle: AppTextStyles.hintText,
              ),
              SizedBox(
                height: 20.9.h,
              ),
              CustomButton(
                  title: 'Log in',
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const NavigationBarScreen()));
                  }),
              SizedBox(
                height: 20.16.h,
              ),
              Text(
                textAlign: TextAlign.center,
                "Forgot Password?",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.44.sp,
                    color: Color(0xff0082CD)),
              ),
              SizedBox(
                height: 26.8.h,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 1,
                    color: AppColors.dividerColor,
                  )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 13.49.w),
                    child: Text(
                      "or",
                      style: TextStyle(
                          color: Color(0xff8C8C8C),
                          fontSize: 14.44.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 1,
                    color: AppColors.dividerColor,
                  )),
                ],
              ),
              SizedBox(
                height: 23.h,
              ),
              SizedBox(
                height: 50.39.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.facebookFieldColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.22.r),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppImages.facebookIcon),
                      SizedBox(width: 14.33.w),
                      Text("Log in with Facebook",
                          style: TextStyle(
                            fontSize: 14.44.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.buttonTextColor,
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12.89.h,
              ),
              SizedBox(
                height: 50.39.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.fieldsColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.22.r),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppImages.googleIcon),
                      SizedBox(width: 14.33.w),
                      Text("Log in with Google",
                          style: TextStyle(
                            fontSize: 14.44.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.titleColor,
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 117.23.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const RegisterScreen()));
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'Don\'t have an account?',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.63.sp,
                            )),
                        TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              color: Color(0xff0082CD),
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w500,
                              fontSize: 12.63.sp,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
