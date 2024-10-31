import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task7/core/constants/app_colors.dart';
import 'package:task7/core/constants/app_text_styles.dart';
import 'package:task7/exports/exports.dart';
import 'package:task7/view/messenger_screen/messenger_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo
                Image.asset(
                  'assets/images/focal2.png',
                  // تأكد من أن الصورة موجودة في المسار الصحيح
                  width: 51.15.w,
                  height: 62.65.h,
                ),

                SizedBox(height: 30.0.h), // المسافة بين الشعار وحقل "Email"

                // Email Field
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: AppTextStyles.hintText,
                    filled: true,
                    fillColor: AppColors.fieldsColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.41.r),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 12.92.h),

                // Password Field
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: AppTextStyles.hintText,
                    filled: true,
                    fillColor: AppColors.fieldsColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.41.r),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      color: AppColors.hintTextColor,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),

                // Log In Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // يمكنك إضافة أي إجراء هنا عند الضغط على زر "Log in"
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.41.r),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15.w),
                    ),
                    child: Text(
                      'Log in',
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),

                // Forgot Password Link
                TextButton(
                  onPressed: () {
                    // تنفيذ استعادة كلمة المرور
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),

                // Divider with "or"
                SizedBox(height: 13.h),
                Row(
                  children: [
                    const Expanded(child: Divider(color: Colors.grey)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0.h),
                      child: const Text(
                        'or',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    const Expanded(child: Divider(color: Colors.grey)),
                  ],
                ),

                // Facebook Login Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MessagesScreen()),
                      );
                    },
                    icon: Icon(Icons.facebook, color: Colors.white),
                    label: Text(
                      'Log in with Facebook',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.facebookFieldColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.41.r),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15.w),
                    ),
                  ),
                ),
                SizedBox(height: 15.h),

                // Google Login Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/google.png',
                      // تأكد من وجود أيقونة Google في المسار الصحيح
                      width: 20.0.w,
                      height: 20.0.h,
                    ),
                    label: Text(
                      'Log in with Google',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.fieldsColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.41.r),
                        side: BorderSide(color: Colors.grey),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15.w),
                    ),
                  ),
                ),
                SizedBox(height: 125.h),

                // Already have an account? Sign Up
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
