import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_2/widgets/CustomTextFormField.dart';
import 'custom_text_form_field.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Image.asset(
                    'images/focal2.png',
                    width: 51.15,
                    height: 62.65,
                  ),
                ),
                SizedBox(height: 30.0),

                // Fullname Field
                SizedBox(
                  width: 309.65,
                  height: 50.39,
                  child: CustomTextFormField(
                    controller: fullnameController,
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your full name';
                      }
                      return null;
                    },
                    hintText: 'Fullname',
                  ),
                ),
                SizedBox(height: 10),

                // Email Field
                SizedBox(
                  width: 309.65,
                  height: 50.39,
                  child: CustomTextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    hintText: 'Email',
                  ),
                ),
                SizedBox(height: 10),

                // Password Field
                SizedBox(
                  width: 309.65,
                  height: 50.39,
                  child: CustomTextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    isPassword: true,
                    hintText: 'Password',
                  ),
                ),
                SizedBox(height: 20),

                // Sign Up Button
                SizedBox(
                  width: 309.65,
                  height: 50.39,
                  child: ElevatedButton(
                    onPressed: () {
                      // يمكنك إضافة أي إجراء هنا عند الضغط على زر Sign Up
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(height: 10),

                // Divider with "or"
                SizedBox(
                  width: 309.32,
                  height: 50.44,
                  child: Row(
                    children: [
                      Expanded(child: Divider(color: Colors.grey)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'or',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Expanded(child: Divider(color: Colors.grey)),
                    ],
                  ),
                ),
                SizedBox(height: 10),

                // Facebook Login Button
                SizedBox(
                  width: 309.65,
                  height: 50.39,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.facebook, color: Colors.white),
                    label: Text(
                      'Log in with Facebook',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1877F2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                  ),
                ),
                SizedBox(height: 10),

                // Google Login Button
                SizedBox(
                  width: 309.65,
                  height: 50.39,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/google.png',
                      width: 21.65,
                      height: 21.65,
                    ),
                    label: Text(
                      'Log in with Google',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Terms and Conditions
                SizedBox(
                  width: 309.67,
                  height: 37.8,
                  child: Text.rich(
                    TextSpan(
                      text: 'By signing up you accept the ',
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(
                          text: ' and ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30),

                // Already have an account? Log in
                SizedBox(
                  width: 238.89,
                  height: 21.23,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Log in',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
