import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_project/NavigationPage/home_page.dart';
import 'package:my_project/Widgets/auth/app_button_theme.dart';
import 'package:my_project/Widgets/auth/profile_page_register.dart';
import 'app_button_theme.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthWidget extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const AuthWidget({Key? key, required this.showRegisterPage})
      : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void dispose() {
    emailTextController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future signUp() async {}

  String? errorText = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF33907C),
      body: Align(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    child: Text(
                  'Welcome to tradly',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
                SizedBox(
                  height: 80,
                ),
                Container(
                  child: Text(
                    'Login to your account',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Center(
                  child: Container(
                      width: 350,
                      child: TextField(
                        controller: emailTextController,
                        decoration: InputDecoration(
                          focusedBorder: AppBarStyle.focused,
                          enabledBorder: AppBarStyle.enabled,
                          hintText: 'Email/Mobile Number',
                          hintStyle: AppBarStyle.text_style,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 350,
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          focusedBorder: AppBarStyle.focused,
                          enabledBorder: AppBarStyle.enabled,
                          hintText: 'Password',
                          hintStyle: AppBarStyle.text_style,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16)),
                      obscureText: true,
                    ),
                  ),
                ),
                if (errorText != null) ...[
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "errorText,",
                    style: TextStyle(color: Colors.red, fontSize: 17),
                  ),
                ],
                SizedBox(
                  height: 40,
                ),
                Center(
                    child: Container(
                  width: 320,
                  height: 50,
                  decoration: AppBarStyle.boxDecoration,
                  child: TextButton(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Color(0xFF33907C), fontSize: 16),
                    ),
                    onPressed: () {
                      signIn();
                    },
                  ),
                )),
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: Container(
                        child: TextButton(
                            child: Text(
                              'Forgot your password?',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            onPressed: () {}))),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account?',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        GestureDetector(
                          onTap: widget.showRegisterPage,
                          child: Text(
                            'Register now',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailTextController.text.trim(),
          password: passwordController.text.trim());
    } catch (e) {
      print('error');
    }
  }
}
