import 'package:task7/exports/exports.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
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
                controller: nameController,
                keyboardType: TextInputType.text,
                validator: nameValidator,
                hintText: 'Fullname',
                hintStyle: AppTextStyles.hintText,
              ),
              SizedBox(
                height: 12.9.h,
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
                  title: 'Sign Up',
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }),
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
                height: 20.8.h,
              ),
              Center(
                child: Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'By signing up you accept the ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.63.sp,
                          )),
                      TextSpan(
                          text: 'Terms of Service\n ',
                          style: TextStyle(
                            color: Color(0xff0082CD),
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 12.63.sp,
                          )),
                      TextSpan(
                          text: 'and ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.63.sp,
                          )),
                      TextSpan(
                          text: 'Privacy Policy',
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
              SizedBox(
                height: 37.59.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const LoginScreen()));
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'Already have an account?',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.63.sp,
                            )),
                        TextSpan(
                            text: 'Log in',
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
