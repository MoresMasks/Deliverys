import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_project/Widgets/auth/app_button_theme.dart';
import 'package:my_project/Widgets/auth/auth_widget.dart';

class ProfilePage extends StatefulWidget {
  final VoidCallback showLoginPage;
  ProfilePage({Key? key, required this.showLoginPage}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    super.dispose();
  }

  Future signUp() async {
    if (PasswordConfirm()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _emailController.text.trim());
    }
  }

  bool PasswordConfirm() {
    if (_passwordController.text.trim() ==
        _confirmpasswordController.text.trim()) {
      return true;
    } else
      return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(51, 144, 124, 1),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),

              SizedBox(
                height: 50,
              ),
              Container(
                  child: Text(
                'Welcome to tradly',
                style: TextStyle(color: Colors.white, fontSize: 24),
              )),
              SizedBox(
                height: 60,
              ),
              Container(
                child: Text(
                  'Signup to your account',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              SizedBox(height: 30),
              // Container(
              //     width: 350,
              //     child: TextField(
              //         decoration: InputDecoration(
              //       focusedBorder: AppBarStyle.focused,
              //       enabledBorder: AppBarStyle.enabled,
              //       hintText: 'First Name',
              //       hintStyle: AppBarStyle.text_style,
              //       contentPadding: EdgeInsets.symmetric(horizontal: 16),
              //     ))),
              // SizedBox(
              //   height: 20,
              // ),
              // Container(
              //     width: 350,
              //     child: TextField(
              //         decoration: InputDecoration(
              //       focusedBorder: AppBarStyle.focused,
              //       enabledBorder: AppBarStyle.enabled,
              //       hintText: 'Last Name',
              //       hintStyle: AppBarStyle.text_style,
              //       contentPadding: EdgeInsets.symmetric(horizontal: 16),
              //     ))),
              // SizedBox(
              //   height: 20,
              // ),
              Container(
                  width: 350,
                  child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        focusedBorder: AppBarStyle.focused,
                        enabledBorder: AppBarStyle.enabled,
                        hintText: 'Email',
                        hintStyle: AppBarStyle.text_style,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      ))),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 350,
                  child: TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        focusedBorder: AppBarStyle.focused,
                        enabledBorder: AppBarStyle.enabled,
                        hintText: 'Password',
                        hintStyle: AppBarStyle.text_style,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      ))),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 350,
                  child: TextField(
                      controller: _confirmpasswordController,
                      decoration: InputDecoration(
                        focusedBorder: AppBarStyle.focused,
                        enabledBorder: AppBarStyle.enabled,
                        hintText: 'Re-enter Password',
                        hintStyle: AppBarStyle.text_style,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      ))),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 320,
                height: 50,
                decoration: AppBarStyle.boxDecoration,
                child: TextButton(
                  child: Text(
                    'Create',
                    style: TextStyle(color: Color(0xFF33907C), fontSize: 16),
                  ),
                  onPressed: () {
                    signUp();
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text(
                      'Don’t have an account?',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: widget.showLoginPage,
                      child: Text(
                        'Sign in ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    )
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
  //     // drawer: Drawer(
  //     //   child: Container(),
  //     ),
  //   );
  // 
